class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
   @users = User.all
   if @users
     render :json => @users, :include => :strains
   else
     render json: {
       status: 500,
       errors: ['no users found']
     }
   end
 end

 def show
   @user = User.find params[:id]
   if @user
      render :json => @user, :include => :strains
    else
      render json: {
        status: 500,
        errors: ['user not found']
      }
    end
 end

 def create
  user = User.new(user_params)

  if user.save
    session[:user_id] = user.id
    render json: {
      status: :created,
      user: {
        email: user.email,
        id: user.id
      }
    }
  else
    render json: {
      status: 500,
      errors: user.errors.full_messages
    }
  end
 end

 def update
  respond_to do |format|
    if @user.update(user_params)
      format.html { redirect_to @user, notice: 'user was successfully updated.' }
      format.json { render json: @user, status: :ok }
    else
      format.html { render :edit }
      format.json { render json: @user.errors, status: :unprocessable_entity }
    end
  end
 end

 def destroy
   @user.destroy
   respond_to do |format|
     format.html { redirect_to users_url, notice: 'user was successfully destroyed.' }
     format.json { head :no_content }
   end
 end


 private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.permit(:email, :password, :password_confirmation)
  end
end

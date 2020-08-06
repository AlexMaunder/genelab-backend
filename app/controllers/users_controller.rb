class UsersController < ApplicationController

  def index
   @users = User.all
   if @users
     render json: {
       users: @users
     }
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
      render json: {
        user: @user
      }
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

  def user_params
    params.permit(:email, :password, :password_confirmation)
  end
end

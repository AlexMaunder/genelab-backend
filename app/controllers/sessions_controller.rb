class SessionsController < ApplicationController

  def create
    user = User
      .find_by(email: params["email"])
      # .try(:user, params["password"])
    if user
      session[:user_id] = user.id #put user.id into the cookie
      render json: {
        status: :created,
        logged_in: true,
        user: {
          email: user.email,
          id: user.id
        }
      }
    else
      render json: {
        status: 401,
      }
    end
  end

  def logged_in
    if @current_user
      render json: {
        logged_in: true,
        user: @current_user
      }
    else
      render json: {
        logged_in: false,
        message: 'no such user'
      }
    end
  end

  def logout
    reset_session
    render json: {
      status: 200,
      logged_out: true
    }
  end
end

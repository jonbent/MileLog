class SessionsController < ApplicationController
  skip_before_action :require_login
  def new
    @user = User.new
  end

  def create
    user = User.find_by(username: params[:username].downcase)
        if user && user.authenticate(params[:password])
          redirect_to user_path(user)
          session[:user_id] = user.id
        else
          render 'new'
        end

  end

  def delete
    logout

    redirect_to root_path
  end
end

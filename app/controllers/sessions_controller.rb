class SessionsController < ApplicationController
  def new

  end

  def create

  end

  def delete
    logout

    redirect_to root_path
  end
end

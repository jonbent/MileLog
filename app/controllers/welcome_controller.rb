class WelcomeController < ApplicationController
  before_action :redirect_if_logged_in

  def index

  end
  
  private

  def redirect_if_logged_in
    redirect_to(user_path(current_user)) if current_user # check if user logged in
  end
end

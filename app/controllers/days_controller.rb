class DaysController < ApplicationController

  def index
    @days = current_user.days.all
  end

  def new
    @day = Day.new
  end

  def create
    @day = Day.new(day_params)
    @day.user = current_user
    if @day.save
      redirect_to user_days_url(current_user)
    else
      redirect_to new_user_day_url(current_user)
    end
  end

  def destroy
    @day = Day.find(params[:id])
    @day.destroy
    redirect_to user_days_url(current_user)
  end
  private

  def day_params
    params.require(:day).permit(:miles, :date_driven)
  end
end

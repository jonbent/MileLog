class PaydaysController < ApplicationController

  def index
    @paydays = current_user.days.all
  end

  def new
    @payday = Payday.new
  end

  def create
    @payday = Payday.new(payday_params)
    @payday.user = current_user
    if @payday.save
      redirect_to user_paydays_path(current_user)
    else
      p @payday.errors
      render :new
    end
  end

  private

  def payday_params
    params.require(:payday).permit(:amount, :amount_back, :paydate)
  end
end

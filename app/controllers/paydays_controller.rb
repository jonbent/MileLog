class PaydaysController < ApplicationController

  def index
    @paydays = Payday.all
  end

  def new
    @payday = Payday.new
  end

  def create
    @payday = Payday.new(payday_params)
    if @payday.save
      redirect_to user_paydays_path(current_user)
    else
      render :new
    end
  end

  private

  def payday_params
    params.require(:payday).permit(:amount, :amount_back, paydate)
  end
end

class ExpendituresController < ApplicationController

  def index
    @expenditures = Expenditure.where(user_id: current_user.id)
  end

  def new
    @expenditure = Expenditure.new
  end

  def create
    @expenditure = Expenditure.new(expenditure_params)

    if @expenditure.save
      redirect_to user_expenditures_path(current_user)
    else
      render :new
    end

  end
  private

  def expenditure_params
    params.require(:expenditure).permit(:type, :date_spent, :purchase_amount)
  end

end

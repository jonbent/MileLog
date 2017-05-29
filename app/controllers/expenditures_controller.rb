class ExpendituresController < ApplicationController

  def index
    @expenditures = Expenditure.where(user_id: current_user.id)
  end

  def new
    @expenditure = Expenditure.new
  end

  def create
    @expenditure = Expenditure.new(expenditure_params)
    @expenditure.user = current_user
    if @expenditure.save
      redirect_to user_expenditures_path(current_user)
    else
      render :new
    end

  end

  def destroy
    @expenditure = Expenditure.find(params[:id])

    @expenditure.destroy

    redirect_to user_expenditures_path(current_user)
  end
  private

  def expenditure_params
    params.require(:expenditure).permit(:kind, :date_spent, :purchase_amount)
  end

end

class AddUserToExpenditures < ActiveRecord::Migration[5.0]
  def change
    add_reference :expenditures, :user, foreign_key: true
  end
end

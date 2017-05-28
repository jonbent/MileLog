class ChangeStringsToFloatsInPaydays < ActiveRecord::Migration[5.0]
  def change
    remove_column :paydays, :amount
    add_column :paydays, :amount, :float
    remove_column :paydays, :amount_back
    add_column :paydays, :amount_back, :float
  end
end

class ChangePaydateToDateInPayday < ActiveRecord::Migration[5.0]
  def change
    change_column :paydays, :paydate, :date
  end
end

class ChangePaydateToDate < ActiveRecord::Migration[5.0]
  def change
    remove_column :paydays, :paydate
  end
end

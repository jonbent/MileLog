class ChangePaydateToStringInPayday < ActiveRecord::Migration[5.0]
  def change
    change_column :paydays, :paydate, :string
  end
end

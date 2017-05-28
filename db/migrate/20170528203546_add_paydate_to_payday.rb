class AddPaydateToPayday < ActiveRecord::Migration[5.0]
  def change
    add_column :paydays, :paydate, :date
  end
end

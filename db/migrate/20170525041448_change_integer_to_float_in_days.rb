class ChangeIntegerToFloatInDays < ActiveRecord::Migration[5.0]
  def change
    change_column :days, :miles, :float, scale: 2
  end
end

class AddDateDrivenToDate < ActiveRecord::Migration[5.0]
  def change
    add_column :days, :date_driven, :date
  end
end

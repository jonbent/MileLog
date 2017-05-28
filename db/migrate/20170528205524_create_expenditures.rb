class CreateExpenditures < ActiveRecord::Migration[5.0]
  def change
    create_table :expenditures do |t|
      t.string :type
      t.date :date_spent
      t.decimal :purchase_amount, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end

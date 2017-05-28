class CreatePaydays < ActiveRecord::Migration[5.0]
  def change
    create_table :paydays do |t|
      t.string :amount
      t.string :amount_back

      t.timestamps
    end
  end
end

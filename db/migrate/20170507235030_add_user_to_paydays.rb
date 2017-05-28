class AddUserToPaydays < ActiveRecord::Migration[5.0]
  def change
    add_reference :paydays, :user, foreign_key: true
  end
end

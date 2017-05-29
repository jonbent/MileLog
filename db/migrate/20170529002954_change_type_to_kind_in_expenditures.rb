class ChangeTypeToKindInExpenditures < ActiveRecord::Migration[5.0]
  def change
    rename_column :expenditures, :type, :kind
  end
end

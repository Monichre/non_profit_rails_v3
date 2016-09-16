class AddNameToNonProfit < ActiveRecord::Migration[5.0]
  def change
    add_column :non_profits, :name, :string
    add_column :non_profits, :mission, :string
    add_column :non_profits, :location, :string
  end
end

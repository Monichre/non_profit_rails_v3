class AddColumnToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :user_id, :integer
    add_column :posts, :non_profit_id, :integer
  end
end

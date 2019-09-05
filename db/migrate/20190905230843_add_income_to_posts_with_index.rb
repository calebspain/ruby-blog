class AddIncomeToPostsWithIndex < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :income, :string
    add_index :posts, :income
  end
end

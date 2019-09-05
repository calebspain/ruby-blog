class RemoveIncomeFromPosts < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :income, :string
  end
end

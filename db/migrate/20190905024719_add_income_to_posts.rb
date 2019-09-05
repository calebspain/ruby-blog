class AddIncomeToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :income, :string
  end
end

class AddNullFalseContstraintToPostAndComment < ActiveRecord::Migration[6.1]
  def change
    change_column :posts, :title, :string, null: false
    change_column :posts, :body, :string, null: false
    change_column :comments, :description, :string, null: false
  end
end

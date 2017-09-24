class AddEmailToCandies < ActiveRecord::Migration
  def change
    add_column :candies, :email, :string
  end
end

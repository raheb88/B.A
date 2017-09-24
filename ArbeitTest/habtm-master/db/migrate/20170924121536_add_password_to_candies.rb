class AddPasswordToCandies < ActiveRecord::Migration
  def change
    add_column :candies, :password, :string
  end
end

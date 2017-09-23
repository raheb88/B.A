class AddFirstnameToCandies < ActiveRecord::Migration
  def change
    add_column :candies, :firstname, :string
  end
end

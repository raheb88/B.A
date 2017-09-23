class AddNameToAttendants < ActiveRecord::Migration
  def change
    add_column :attendants, :name, :string
  end
end

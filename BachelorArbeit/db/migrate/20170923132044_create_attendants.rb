class CreateAttendants < ActiveRecord::Migration
  def change
    create_table :attendants do |t|
      t.timestamps null: false
    end
  end
end

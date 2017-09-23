class AttendantsSeminars < ActiveRecord::Migration
  def change
    create_table :attendants_seminars, :id => false do |t|
      t.integer :attendant_id
      t.integer :seminar_id
    end
  end
end

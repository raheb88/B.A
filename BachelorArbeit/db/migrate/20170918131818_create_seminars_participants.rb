class CreateSeminarsParticipants < ActiveRecord::Migration
  def change
    create_table :seminars_participants  :id => false do |t|
      t.integer :seminar_id
      t.integer :participant_id
    end
  end
end

class ParticipantsSeminars < ActiveRecord::Migration

  def change
    create_table :participants_seminars, :id => false do |t|
      t.integer :participant_id
      t.integer :seminar_id
    end
  end
end

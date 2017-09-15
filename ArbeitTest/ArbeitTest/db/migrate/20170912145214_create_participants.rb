class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :email
      t.string :password
      t.references :seminar, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
  add_index :participants, [:seminar_id, :create_at]
end

class CreateSeminars < ActiveRecord::Migration
  def change
    create_table :seminars do |t|
      t.string :title
      t.text :description
      t.timestamps null: false

    end
    add_column:participants, :seminar_id, :integer
  end
end

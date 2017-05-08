class CreateSeminars < ActiveRecord::Migration
  def change
    create_table :seminars do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end

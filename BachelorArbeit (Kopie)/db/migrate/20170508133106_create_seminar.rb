class CreateSeminar < ActiveRecord::Migration
  def change
    create_table :seminars do |t|
      t.string :title
      t.text   :description
      t.timestamps
    end
  end
end

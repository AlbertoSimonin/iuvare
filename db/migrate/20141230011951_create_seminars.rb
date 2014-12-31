class CreateSeminars < ActiveRecord::Migration
  def change
    create_table :seminars do |t|
      t.string :title
      t.string :speaker
      t.string :description
      t.string :source

      t.timestamps
    end
  end
end

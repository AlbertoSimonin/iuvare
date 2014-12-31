class CreateAudios < ActiveRecord::Migration
  def change
    create_table :audios do |t|
      t.string :title
      t.string :number
      t.string :speaker
      t.string :description
      t.boolean :in_store
      t.float :price

      t.timestamps
    end
  end
end

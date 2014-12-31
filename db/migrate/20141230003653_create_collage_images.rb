class CreateCollageImages < ActiveRecord::Migration
  def change
    create_table :collage_images do |t|
      t.integer :collages_id
      t.string :source

      t.timestamps
    end
  end
end

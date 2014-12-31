class CreateWorkshops < ActiveRecord::Migration
  def change
    create_table :workshops do |t|
      t.string :title
      t.string :speaker
      t.time :lenght
      t.string :source

      t.timestamps
    end
  end
end

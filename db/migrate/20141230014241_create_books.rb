class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :description
      t.boolean :in_store
      t.float :price

      t.timestamps
    end
  end
end

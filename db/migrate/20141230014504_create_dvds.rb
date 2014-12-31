class CreateDvds < ActiveRecord::Migration
  def change
    create_table :dvds do |t|
      t.string :title
      t.string :description
      t.boolean :in_store
      t.float :price

      t.timestamps
    end
  end
end

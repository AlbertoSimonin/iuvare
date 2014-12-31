class CreateBooklets < ActiveRecord::Migration
  def change
    create_table :booklets do |t|
      t.string :title
      t.string :description
      t.boolean :in_store
      t.float :price

      t.timestamps
    end
  end
end

class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :title
      t.string :description
      t.boolean :in_store
      t.float :price

      t.timestamps
    end
  end
end

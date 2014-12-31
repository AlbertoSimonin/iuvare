class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :id_iuvare
      t.integer :id_xango
      t.integer :id_iuvare_sponsor
      t.integer :id_xango_sponsor
      t.integer :id_iuvare_placement
      t.integer :id_xango_placement
      t.string :uid
      t.string :name
      t.string :lastname
      t.string :email
      t.string :password
      t.string :picture

      t.timestamps
    end
  end
end

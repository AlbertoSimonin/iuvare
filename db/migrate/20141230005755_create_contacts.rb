class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :users_id
      t.integer :states_id
      t.string :name
      t.string :email
      t.string :telephone

      t.timestamps
    end
  end
end

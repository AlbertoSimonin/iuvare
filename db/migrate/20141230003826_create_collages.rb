class CreateCollages < ActiveRecord::Migration
  def change
    create_table :collages do |t|
      t.integer :users_id

      t.timestamps
    end
  end
end

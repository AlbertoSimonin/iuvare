class CreatePersonalities < ActiveRecord::Migration
  def change
    create_table :personalities do |t|
      t.integer :users_id
      t.float :red
      t.float :yellow
      t.float :green
      t.float :blue

      t.timestamps
    end
  end
end

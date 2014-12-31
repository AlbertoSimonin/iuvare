class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :speaker
      t.time :length
      t.string :source

      t.timestamps
    end
  end
end

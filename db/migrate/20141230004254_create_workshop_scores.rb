class CreateWorkshopScores < ActiveRecord::Migration
  def change
    create_table :workshop_scores do |t|
      t.integer :users_id
      t.integer :workshops_id
      t.float :score

      t.timestamps
    end
  end
end

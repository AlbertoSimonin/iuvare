class CreateGoalToBes < ActiveRecord::Migration
  def change
    create_table :goal_to_bes do |t|
      t.integer :users_id
      t.text :dream
      t.text :goal
      t.date :date

      t.timestamps
    end
  end
end

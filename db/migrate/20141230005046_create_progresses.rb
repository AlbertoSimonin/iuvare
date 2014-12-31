class CreateProgresses < ActiveRecord::Migration
  def change
    create_table :progresses do |t|
      t.integer :users_id
      t.integer :call
      t.integer :preplan
      t.integer :plan
      t.integer :closure
      t.integer :tracking

      t.timestamps
    end
  end
end

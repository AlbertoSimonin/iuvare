class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :workshops_id
      t.string :text

      t.timestamps
    end
  end
end

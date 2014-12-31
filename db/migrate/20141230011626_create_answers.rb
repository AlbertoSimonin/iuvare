class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :questions_id
      t.string :text
      t.boolean :true

      t.timestamps
    end
  end
end

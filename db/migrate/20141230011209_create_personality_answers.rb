class CreatePersonalityAnswers < ActiveRecord::Migration
  def change
    create_table :personality_answers do |t|
      t.integer :colors_id
      t.string :text

      t.timestamps
    end
  end
end

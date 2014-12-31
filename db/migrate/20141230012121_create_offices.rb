class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :city
      t.string :address
      t.string :schedule

      t.timestamps
    end
  end
end

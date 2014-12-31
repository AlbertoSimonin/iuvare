class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :title
      t.datetime :event_date
      t.boolean :in_store
      t.float :price

      t.timestamps
    end
  end
end

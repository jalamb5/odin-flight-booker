class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.integer :departure_id
      t.integer :arrival_id

      t.timestamps
    end
    add_index :flights, :departure_id
    add_index :flights, :arrival_id
  end
end

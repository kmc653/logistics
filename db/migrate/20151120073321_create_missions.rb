class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.datetime :deliver_date
      t.string :client_1
      t.string :client_2
      t.integer :truck_id
      t.integer :number_of_item
      t.boolean :two_clients
      t.timestamps null: false
    end
  end
end

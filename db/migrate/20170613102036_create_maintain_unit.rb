class CreateMaintainUnit < ActiveRecord::Migration[5.0]
  def change
    create_table :maintain_units do |t|
      t.string :title
      t.timestamps null: false
    end
  end
end

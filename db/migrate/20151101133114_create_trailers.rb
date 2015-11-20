class CreateTrailers < ActiveRecord::Migration
  def change
    create_table :trailers do |t|
      t.string :trailer_id
      t.string :trailer_brand
      t.string :trailer_type
      t.date :buy_date
      t.timestamps
    end
  end
end

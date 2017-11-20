class CreateConcerts < ActiveRecord::Migration[5.1]
  def change
    create_table :concerts do |t|
     t.string :name
     t.integer :band_id
     t.integer :venue_id
     t.date :date
  end
end
end

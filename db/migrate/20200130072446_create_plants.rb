class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.boolean :availablity
      t.string :pictures
      t.belongs_to :seller, null: false, foreign_key: true

      t.timestamps
    end
  end
end

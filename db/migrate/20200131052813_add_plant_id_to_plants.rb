class AddPlantIdToPlants < ActiveRecord::Migration[6.0]
  def change
    add_column :plants, :plant_id, :integer
  end
end

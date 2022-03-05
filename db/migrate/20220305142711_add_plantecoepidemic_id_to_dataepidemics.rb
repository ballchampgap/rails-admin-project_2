class AddPlantecoepidemicIdToDataepidemics < ActiveRecord::Migration[6.1]
  def change
    add_column :dataepidemics, :plantecoepidemic_id, :int
  end
end

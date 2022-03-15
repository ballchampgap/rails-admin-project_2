class AddPlantEnAndEpidemicEnToEpidemics < ActiveRecord::Migration[6.1]
  def change
    add_column :epidemics, :plant_en, :string
    add_column :epidemics, :epidemic_en, :string
  end
end

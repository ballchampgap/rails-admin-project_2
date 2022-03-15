class AddPlantEnAndPestEnToPests < ActiveRecord::Migration[6.1]
  def change
    add_column :pests, :plant_en, :string
    add_column :pests, :pest_en, :string
  end
end

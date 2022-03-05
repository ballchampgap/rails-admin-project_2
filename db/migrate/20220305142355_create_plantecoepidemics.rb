class CreatePlantecoepidemics < ActiveRecord::Migration[6.1]
  def change
    create_table :plantecoepidemics do |t|
      t.string :name_th
      t.string :name_en

      t.timestamps
    end
  end
end

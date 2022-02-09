class CreateEpidemics < ActiveRecord::Migration[6.1]
  def change
    create_table :epidemics do |t|
      t.string :yname
      t.string :plant_type
      t.string :data_epidemic
      t.string :lat
      t.string :lon

      t.timestamps
    end
  end
end

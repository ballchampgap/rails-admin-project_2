class CreatePests < ActiveRecord::Migration[6.1]
  def change
    create_table :pests do |t|
      t.string :yname
      t.string :plant_type
      t.string :data_pest
      t.string :lat
      t.string :lon

      t.timestamps
    end
  end
end

class CreateDatapests < ActiveRecord::Migration[6.1]
  def change
    create_table :datapests do |t|
      t.string :name_th
      t.string :name_en

      t.timestamps
    end
  end
end

class CreatePlantecopests < ActiveRecord::Migration[6.1]
  def change
    create_table :plantecopests do |t|
      t.string :name_th
      t.string :name_en

      t.timestamps
    end
  end
end

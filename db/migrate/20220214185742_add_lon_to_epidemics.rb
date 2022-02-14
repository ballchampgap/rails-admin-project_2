class AddLonToEpidemics < ActiveRecord::Migration[6.1]
  def change
    add_column :epidemics, :lon, :float
  end
end

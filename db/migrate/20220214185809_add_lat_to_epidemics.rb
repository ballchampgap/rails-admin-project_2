class AddLatToEpidemics < ActiveRecord::Migration[6.1]
  def change
    add_column :epidemics, :lat, :float
  end
end

class RemoveLatFromEpidemics < ActiveRecord::Migration[6.1]
  def change
    remove_column :epidemics, :lat, :string
  end
end

class RemoveLonFromEpidemics < ActiveRecord::Migration[6.1]
  def change
    remove_column :epidemics, :lon, :string
  end
end

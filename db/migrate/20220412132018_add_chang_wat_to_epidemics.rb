class AddChangWatToEpidemics < ActiveRecord::Migration[6.1]
  def change
    add_column :epidemics, :chang_wat, :string
  end
end

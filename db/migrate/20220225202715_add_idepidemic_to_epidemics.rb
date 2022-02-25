class AddIdepidemicToEpidemics < ActiveRecord::Migration[6.1]
  def change
    add_column :epidemics, :idepidemic, :int
  end
end

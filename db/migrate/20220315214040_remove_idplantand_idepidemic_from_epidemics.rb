class RemoveIdplantandIdepidemicFromEpidemics < ActiveRecord::Migration[6.1]
  def change
    remove_column :epidemics, :idplant, :int
    remove_column :epidemics, :idepidemic, :int
  end
end

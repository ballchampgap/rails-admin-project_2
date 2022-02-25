class AddIdplantToEpidemics < ActiveRecord::Migration[6.1]
  def change
    add_column :epidemics, :idplant, :int
  end
end

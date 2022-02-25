class AddIdplantToPests < ActiveRecord::Migration[6.1]
  def change
    add_column :pests, :idplant, :int
  end
end

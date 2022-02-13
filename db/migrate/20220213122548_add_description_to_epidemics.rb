class AddDescriptionToEpidemics < ActiveRecord::Migration[6.1]
  def change
    add_column :epidemics, :description, :string
  end
end

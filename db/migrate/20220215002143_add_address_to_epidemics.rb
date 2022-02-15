class AddAddressToEpidemics < ActiveRecord::Migration[6.1]
  def change
    add_column :epidemics, :address, :string
  end
end

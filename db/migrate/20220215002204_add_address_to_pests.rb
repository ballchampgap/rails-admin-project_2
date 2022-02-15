class AddAddressToPests < ActiveRecord::Migration[6.1]
  def change
    add_column :pests, :address, :string
  end
end

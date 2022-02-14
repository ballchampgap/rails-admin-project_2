class AddLonToPests < ActiveRecord::Migration[6.1]
  def change
    add_column :pests, :lon, :float
  end
end

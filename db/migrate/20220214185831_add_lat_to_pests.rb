class AddLatToPests < ActiveRecord::Migration[6.1]
  def change
    add_column :pests, :lat, :float
  end
end

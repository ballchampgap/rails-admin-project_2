class RemoveLatFromPests < ActiveRecord::Migration[6.1]
  def change
    remove_column :pests, :lat, :string
  end
end

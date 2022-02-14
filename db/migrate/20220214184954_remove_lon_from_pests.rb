class RemoveLonFromPests < ActiveRecord::Migration[6.1]
  def change
    remove_column :pests, :lon, :string
  end
end

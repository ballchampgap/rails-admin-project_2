class AddChangWatToPests < ActiveRecord::Migration[6.1]
  def change
    add_column :pests, :chang_wat, :string
  end
end

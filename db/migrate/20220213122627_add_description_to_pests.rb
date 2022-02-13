class AddDescriptionToPests < ActiveRecord::Migration[6.1]
  def change
    add_column :pests, :description, :string
  end
end

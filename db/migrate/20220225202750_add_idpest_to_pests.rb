class AddIdpestToPests < ActiveRecord::Migration[6.1]
  def change
    add_column :pests, :idpest, :int
  end
end

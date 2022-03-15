class RemoveIdplantandIdpestFromPests < ActiveRecord::Migration[6.1]
  def change
    remove_column :pests, :idplant, :int
    remove_column :pests, :idpest, :int
  end
end

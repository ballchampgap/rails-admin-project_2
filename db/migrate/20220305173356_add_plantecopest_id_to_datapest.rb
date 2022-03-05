class AddPlantecopestIdToDatapest < ActiveRecord::Migration[6.1]
  def change
    add_column :datapests, :plantecopest_id, :int
  end
end

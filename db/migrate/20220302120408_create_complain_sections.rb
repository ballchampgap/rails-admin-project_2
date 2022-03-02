class CreateComplainSections < ActiveRecord::Migration[6.1]
  def change
    create_table :complain_sections do |t|
      t.string :section

      t.timestamps
    end
  end
end

class CreateComplains < ActiveRecord::Migration[6.1]
  def change
    create_table :complains do |t|
      t.string :yname
      t.string :section
      t.string :body
      t.string :user_id
      t.string :reply

      t.timestamps
    end
  end
end

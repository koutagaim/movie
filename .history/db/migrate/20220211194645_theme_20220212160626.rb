class Theme < ActiveRecord::Migration[5.2]
  def change
    create_table :themes do |t|
      t.string :name, null: false
      t.text :description
      t.string :character
      t.string :bestscene

      t.timestamps
    end
  end
end

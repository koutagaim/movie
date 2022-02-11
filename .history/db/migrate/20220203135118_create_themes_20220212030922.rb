class CreateThemes < ActiveRecord::Migration[5.2]
  def change
    create_table :themes do |t|
      t.string :name
      t.text :description
      t.string :charactername
      t.string :bestscene

      t.timestamps
    end
  end
end

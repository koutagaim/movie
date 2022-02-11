class Theme < ActiveRecord::Migration[5.2]
  def change
    create_table :themes do |t|
      t.string :name
      t.text :description
      t.text :character
      t.text :bestscene

      t.timestamps
    end
  end
end

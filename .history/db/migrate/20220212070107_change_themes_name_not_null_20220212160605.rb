class ChangeThemesNameNotNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :themes, :description, false
  end
end

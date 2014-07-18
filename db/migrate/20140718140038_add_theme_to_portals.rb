class AddThemeToPortals < ActiveRecord::Migration
  def change
    add_column :portals, :theme, :string 
  end
end

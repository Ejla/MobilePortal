class CreateAdminPortals < ActiveRecord::Migration
  def change
    create_table :portal_settings do |t|
      t.string :title
      t.integer :logo_image_id
      t.string :bg_css
      t.integer :bg_image_id
      t.string :layout
      t.string :font
      t.string :theme

      t.timestamps
    end
  end
end

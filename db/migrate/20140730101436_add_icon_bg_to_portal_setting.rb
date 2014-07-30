class AddIconBgToPortalSetting < ActiveRecord::Migration
  def change
    add_column :portal_settings, :icon_bg, :boolean, default: false
  end
end

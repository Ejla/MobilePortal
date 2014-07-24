class AddInheritanceToImages < ActiveRecord::Migration
  def change
    add_column :images, :type, :string
    add_column :webclips, :webclip_icon_id, :integer
  end
end

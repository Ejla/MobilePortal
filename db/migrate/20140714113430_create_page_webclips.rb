class CreatePageWebclips < ActiveRecord::Migration
  def change
    create_table :page_webclips do |t|
      t.integer :page_id
      t.integer :webclip_id
      t.integer :position
    end
    add_index :page_webclips, :page_id
    add_index :page_webclips, :webclip_id
  end
end

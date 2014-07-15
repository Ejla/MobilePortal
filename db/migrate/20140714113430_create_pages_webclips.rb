class CreatePagesWebclips < ActiveRecord::Migration
  def change
    create_table :pages_webclips do |t|
      t.integer :page_id
      t.integer :webclip_id
    end
    add_index :pages_webclips, :page_id
    add_index :pages_webclips, :webclip_id
  end
end

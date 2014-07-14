class CreateCategoriesWebclips < ActiveRecord::Migration
  def self.up
    create_table :categories_webclips do |t|
      t.integer :category_id
      t.integer :webclip_id
    end
  end
  def self.down
    drop_table :categories_webclips
  end
end

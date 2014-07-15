class CreateCategoriesWebclips < ActiveRecord::Migration
  def change
    create_table :categories_webclips do |t|
      t.integer :category_id
      t.integer :webclip_id
    end
    add_index :categories_webclips, :category_id
    add_index :categories_webclips, :webclip_id
  end
end

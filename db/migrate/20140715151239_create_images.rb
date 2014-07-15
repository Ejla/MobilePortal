class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.text :base64_string
      t.integer :width
      t.integer :height
      t.string :name
      t.string :tags

      t.timestamps
    end
    add_column :webclips, :image_id, :integer
  end
end

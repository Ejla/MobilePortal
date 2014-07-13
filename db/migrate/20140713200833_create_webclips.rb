class CreateWebclips < ActiveRecord::Migration
  def change
    create_table :webclips do |t|
      t.string :name
      t.string :link
      t.integer :order
      t.string :description
      t.integer :category_id

      t.timestamps
    end
  end
end

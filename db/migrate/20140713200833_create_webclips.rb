class CreateWebclips < ActiveRecord::Migration
  def change
    create_table :webclips do |t|
      t.string :name
      t.string :link
      t.integer :position
      t.string :description

      t.timestamps
    end
  end
end

class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :title
      t.string :photo_url
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end

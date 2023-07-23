class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :venue
      t.integer :price
      t.string :image_url
      t.datetime :date
      t.timestamps
    end
  end
end

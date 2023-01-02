class Games < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :title
      t.string :genre
      t.string :platform
      t.string :image
      t.string :description
      t.integer :year
      t.string :developer
      t.integer :price
    end
  end
end

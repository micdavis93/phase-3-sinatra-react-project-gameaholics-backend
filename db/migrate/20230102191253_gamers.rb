class Gamers < ActiveRecord::Migration[6.1]
  def change
    create_table :gamers do |t|
      t.string :name
      t.integer :age
      t.string :origin
      t.string :gender
      t.string :favorite
      t.string :bio
    end
  end
end

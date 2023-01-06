class Reviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.integer :rating
      t.integer :hours
      t.string :text
      t.integer :game_id
      t.integer :gamer_id
    end
  end
end

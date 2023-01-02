class Game < ActiveRecord::Base
  has_many :reviews
  has_many :gamers, through: :reviews
end
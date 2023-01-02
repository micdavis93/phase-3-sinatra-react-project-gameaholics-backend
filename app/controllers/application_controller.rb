class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/games' do
    games = Game.all
    games.to_json
  end
  
  get '/games/:id' do
    game = Game.find(params[:id])
    game.to_json
  end

  get '/gamers' do
    gamers = Gamer.all
    gamers.to_json
  end
  
  get '/gamers/:id' do
    gamer = Gamer.find(params[:id])
    gamer.to_json
  end

  get '/reviews' do
    reviews = Review.all
    reviews.to_json
  end
  
  get '/reviews/:id' do
    review = Review.find(params[:id])
    review.to_json
  end

end

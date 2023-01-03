class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

#####################################
  # ALL
  get '/' do
    games = Game.all
    gamers = Gamer.all
    reviews = Review.all
    {games: games, gamers: gamers, reviews: reviews}.to_json
  end
  

#####################################
  # GAMES
  get '/games' do
    games = Game.all
    games.to_json
  end

  get '/games/:id' do
    game = Game.find(params[:id])
    game.to_json
  end

  post '/games' do
    game = Game.create(
      title: params[:title],
      genre: params[:genre],
      platform: params[:platform],
      image: params[:image],
      description: params[:description],
      year: params[:year],
      developer: params[:developer],
      price: params[:price]
    )
    game.to_json
  end

  patch '/games/:id' do
    game = Game.find(params[:id])
    game.update(
      platform: params[:platform],
      price: params[:price]
    )
    game.to_json
  end


#####################################
  # GAMERS
  get '/gamers' do
    gamers = Gamer.all
    gamers.to_json
  end

  get '/gamers/:id' do
    gamer = Gamer.find(params[:id])
    gamer.to_json
  end

  post '/gamers' do
    gamer = Gamer.create(
      name: params[:name],
      age: params[:age],
      origin: params[:origin],
      gender: params[:gender],
      favorite: params[:favorite],
      bio: params[:bio],
      image: params[:image]
    )
    gamer.to_json
  end

  patch '/gamers/:id' do
    gamer = Gamer.find(params[:id])
    gamer.update(
      age: params[:age],
      favorite: params[:favorite],
      image: params[:image]
    )
    gamer.to_json
  end
  

#####################################
  # REVIEWS
  get '/reviews' do
    reviews = Review.all
    reviews.to_json
  end

  get '/reviews/:id' do
    review = Review.find(params[:id])
    review.to_json
  end

  post '/reviews' do
    review = Review.create(
      title: params[:title],
      rating: params[:rating],
      hours: params[:hours],
      review: params[:review],
      game_id: params[:game_id],
      gamer_id: params[:gamer_id]
    )
    review.to_json
  end

  patch '/reviews/:id' do
    review = Review.find(params[:id])
    review.update(
      title: params[:title],
      rating: params[:rating],
      hours: params[:hours],
      review: params[:review]
    )
    review.to_json
  end

  delete '/reviews/:id' do
    review = Review.find(params[:id])
    review.destroy
  end

end

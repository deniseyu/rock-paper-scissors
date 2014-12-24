require 'sinatra/base'
require_relative 'models/player'
require_relative 'models/game'
require_relative 'models/choice'

class RPS < Sinatra::Base
  set :views, Proc.new{File.join(root, '..', "app", "views")}
  set :public_dir, Proc.new{File.join(root, '..', "public")}
  set :public_folder, 'public'
  enable :sessions

  GAME = Game.new

  get '/' do
    erb :index
  end

  post '/new_game' do
    session[:player_one] = Player.new(params[:name])
    @player = session[:player_one]
    erb :index
  end

  get '/vs_computer' do
    @player = session[:player_one]
    erb :"computer/index"
  end

  post '/vs_computer' do
    @player = session[:player_one]
    @player.choose(Choice.new.objectify(params[:choice]))
    @computer_choice = GAME.choose_random
    @outcome = GAME.outcome_vs_computer(GAME.adjudicate(@player.choice, @computer_choice))
    GAME.award_point(@player) if @outcome == 'You win!'
    erb :"computer/index"
  end

  post '/again' do
    @player = session[:player_one]
    @player.choice = nil
    redirect '/vs_computer'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end

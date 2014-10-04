require 'sinatra/base'
require_relative 'player'
require_relative 'game'

class RPS < Sinatra::Base
  set :views, Proc.new{File.join(root, '..', "views")}
  set :public_dir, Proc.new{File.join(root, '..', "public")}
  set :public_folder, 'public'
  enable :sessions

  GAME = Game.new 

  get '/' do
    @player = session[:player]
    erb :index
  end

  post '/' do
    session[:player] = Player.new
    @player = session[:player]
    @player.name = params[:name]
    erb :index
  end

  post '/reset' do 
    session.clear
    redirect '/'
  end

  get '/game' do 
    player = session[:player]
    friend = session[:friend]
    erb :game
  end

  post '/game' do 
    player = session[:player]
    @name = player.name 
    @mode = params[:mode].to_s
    session[:mode] = @mode
    @choice = player.choice
    @opp_choice = session[:game_choice]
    erb :game
  end

  post '/choice' do 
    player = session[:player]
    player.choice = params[:choice].to_s
    game_choice = GAME.randomize
    session[:game_choice] = game_choice
    session[:outcome] = GAME.outcome(player.choice, game_choice)
    redirect '/outcome'
  end

  post '/choice_friend_mode' do 
    player = session[:player]
    friend = session[:friend]
    player.choice = session[:choice]
    friend.choice = params[:friend_choice].to_s
    session[:outcome] = GAME.outcome(player.choice, friend.choice)
    redirect '/outcome_friend_mode'
  end

  get '/player_one_choice' do
    @player = session[:player]
    erb :player_one_choice    
  end 

  post '/player_one_choice' do 
    @player = session[:player]
    @player.choice = params[:choice].to_s
    session[:choice] = @player.choice 
    @friend = session[:friend]
    redirect '/player_two_choice' 
  end

  get '/player_two_choice' do 
    @friend = session[:friend]
    erb :player_two_choice 
  end 

  get '/outcome' do
    player = session[:player]
    @choice = player.choice
    @opp_choice = session[:game_choice]
    @outcome = session[:outcome]
    erb :outcome
  end

  get '/outcome_friend_mode' do
    @player = session[:player]
    @choice = @player.choice
    @friend = session[:friend]
    @friend_choice = @friend.choice 
    @outcome = session[:outcome]
    erb :outcome_friend_mode
  end

  get '/vs_friend' do 
    erb :vs_friend
  end

  post '/vs_friend' do 
    @player = session[:player]
    @player_choice = @player.choice 
    session[:friend] = Player.new 
    @friend = session[:friend]
    @friend.name = params[:friend_name]
    @friend_choice = @friend.choice 
    erb :vs_friend
  end




  # start the server if ruby file executed directly
  run! if app_file == $0


end 
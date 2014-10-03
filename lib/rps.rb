require 'sinatra/base'
require_relative 'player'
require_relative 'game'

class RPS < Sinatra::Base
  set :views, Proc.new{File.join(root, '..', "views")}
  set :public_dir, Proc.new{File.join(root, '..', "public")}
  # set :public_folder, 'public'
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

  # start the server if ruby file executed directly
  run! if app_file == $0


end 
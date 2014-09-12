require 'sinatra/base'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base

	enable :sessions

	configure :production do
		require 'newrelic_rpm'
	end

  get '/' do
  	erb :index
  end

  get '/play' do
  	@player = session[:player]
    erb :play	
  end

  post '/play' do 
  	session[:player] = params[:name]
  	@player = session[:player]
  	erb :play	
  end

  post "/result" do
  	player = Player.new(params[:name])
  	player.picks = params[:pick]
  	computer = generate_computer
  	@game = Game.new(player, computer)
  	erb :outcome
  end

  def generate_computer
  	choice = ["Rock","Paper","Scissors"].sample
  	comp = Player.new("computer")
  	comp.picks = choice
  	comp
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

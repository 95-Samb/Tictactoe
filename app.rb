
require "sinatra/base"

class Tictactoe < Sinatra::Base
  get "/" do
    erb :index
  end
  get "/Game" do
    erb :game
  end
end
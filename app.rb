
require "sinatra/base"

class Tictactoe < Sinatra::Base
  get "/" do
    erb :index
  end
  get "/game" do
    erb :game
  end
end
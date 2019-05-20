
require "sinatra/base"

class Tictactoe < Sinatra::Base

  get "/" do
    erb :index
  end

  get "/game" do
    erb :game
  end

  post "/game" do
    erb :game2
  end


end

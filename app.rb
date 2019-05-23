
require "sinatra/base"

class Tictactoe < Sinatra::Base

  get "/" do
    erb :index
  end

  get "/game" do
    erb :top_left_button, :layout => :game
  end

  put "/game" do
    erb :top_left_x , :layout => :game
  end

end

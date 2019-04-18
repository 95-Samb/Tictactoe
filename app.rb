
require "sinatra/base"

class Tictactoe < Sinatra::Base
  get "/" do
    erb :index
  end
end
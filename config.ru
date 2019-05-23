require "sinatra"

require "./app.rb"
use Rack::MethodOverride

run Tictactoe

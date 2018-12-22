require "sinatra"
if development? require "sinatra/reloader"
require "pry"

require "~/Desktop/the-odin-project/caesarCipher/caesarCipher.rb"


get "/" do 

	string = (params["string"]).to_s
	shift = (params["shift"]).to_i

	erb :index, :locals => {:string => string, :shift => shift}
end
require_relative 'config/environment'

class App < Sinatra::Base
  get "/" do
    erb :user_input
  end
  
  post "/results" do
    @pig_latinizer = PigLatinizer.new(params[:])
  end
end
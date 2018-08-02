require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @piglatinized_text = PigLatinizer.new
    @piglatinized_text.piglatin(params[:user_phrase])

    erb :results
  end

end

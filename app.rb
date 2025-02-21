require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        piglatin = PigLatinizer.new
        piglatin.piglatinize(params[:user_phrase])
    end
end
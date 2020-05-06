require 'sinatra/base'

class App < Sinatra::Base
 
    get '/newteam' do
        puts params
        erb :newteam
    end 

    post '/newteam' do
        @new_team = params

        erb :team
    end

end

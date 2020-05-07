require 'sinatra/base'
require 'pry'
class App < Sinatra::Base
 
   get '/newteam' do #this connects to the form (route) 
    erb :newteam
    end   
    
    post '/team' do #once you fill the form it will post or display the form with the information
        @name = params["name"]
        @coach = params["coach"]
        @pg = params["pg"]
        @sg = params["sg"]
        @sf = params["sf"]
        @pf = params["pf"]
        @center = params["c"]
    
        erb :team
    end   
end

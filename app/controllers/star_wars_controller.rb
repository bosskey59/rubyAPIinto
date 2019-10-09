class StarWarsController < ApplicationController
    get '/starwars' do 
        @characters = API.get_star_wars
        erb :"/starwars/index"
    end
end
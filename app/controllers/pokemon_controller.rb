class PokemonController < ApplicationController

    get '/pokemon' do
        @pokemon = API.get_pokemon(151)
   
        erb :"/pokemon/index"
    end

    get '/pokemon/:id' do
        @pokemon = API.get_pokemon_details(params[:id])
        erb :"/pokemon/show"
    end

end
class ToyTaleController < ApplicationController

    get '/toys' do
        @toys = API.get_toys
        erb :"toy/index"
    end
    
    get '/toys/new' do
        erb :"toy/new"
    end

    post '/toys' do
        API.create_toy(params)
        redirect "/toys"
    end
end
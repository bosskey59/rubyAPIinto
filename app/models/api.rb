class API #< ActiveRecord::Base

    def self.get_star_wars
        url = "https://swapi.co/api/people"
        resp = RestClient.get(url)
        star_wars_hash = JSON.parse(resp.body)
        star_wars_hash["results"]
    end
    
    def self.get_pokemon(amount)
        url = "https://pokeapi.co/api/v2/pokemon"
        params_hash = {params:{limit:amount}}
        resp = RestClient.get(url, params_hash)
        pokemon_hash = JSON.parse(resp.body)
        pokemon_hash["results"]
    end

    def self.get_pokemon_details(poke_id)
        url = "https://pokeapi.co/api/v2/pokemon/#{poke_id}"
        resp = RestClient.get(url)
        JSON.parse(resp.body)
    end

    def self.get_toys
        url = "http://localhost:3000/toys"
        resp = RestClient.get(url)
        toys_hash = JSON.parse(resp.body)
        toys_hash
    end

    def self.create_toy(params)
        url = "http://localhost:3000/toys/"
        resp = RestClient.post(url,params)
    end
end
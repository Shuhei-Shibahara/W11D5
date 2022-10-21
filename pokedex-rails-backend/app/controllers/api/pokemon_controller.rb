class Api::PokemonController < ApplicationController
	def types 
		@types = Pokemon::TYPES
		render json: @types
	end

	def index
		@pokemons = Pokemon.all
		render :index
	end 

	def show 
		@pokemon = Pokemon.find_by_id(params[:id])
		render :show
	end
end

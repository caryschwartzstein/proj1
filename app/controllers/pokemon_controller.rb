class PokemonController < ApplicationController
	def capture
		poke = Pokemon.find(params[:id])
		poke.trainer = current_trainer
		poke.save
		redirect_to "/"
	end

	def damage
		poke = Pokemon.find(params[:id])
		if poke.health > 10
			poke.health = poke.health - 10
			poke.save
		else
			poke.destroy
		end
		redirect_to "/trainers/#{poke.trainer_id}" 
	end

	def new
		@pokemon = Pokemon.new
	end

	def create
		@pokemon = Pokemon.create(poke_params)
		@pokemon.health = 100
  		@pokemon.level = 1
  		@pokemon.trainer = current_trainer
		if @pokemon.save #If saving the user was successful
      		redirect_to "/trainers/#{current_trainer.id}" #Go to the show view of the user
    	else
    		flash[:error] = @pokemon.errors.full_messages.to_sentence
      		render "new" #Go to the new view for the user
    	end
	end

	def poke_params
    	params.require(:pokemon).permit(:name) 
  	end

end

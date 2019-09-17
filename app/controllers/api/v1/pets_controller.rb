class Api::V1::PetsController < ApplicationController
	before_action :find_pet, only: [:update]

	def index
		@pets = Pet.all
		render json: @pets
	end

	def update
		@pets.update(pets_params)
		if @pet.save
			render json: @pet, status: accepted
		else
			render json: {errors: @note.errors.full_messages, status: :unprocessible_entity}
		end
	end

	private

	def pet_params
		params.permit(:title, :content, :image, :contact)	
	end

	def find_pet
		@pet = Pet.find(params[:id])
	end

end

class PlacesController < ApplicationController
#challenge one
	def index
		@places = Place.all
	end

	def show
		@place = Place.find_by(:id => params["id"])
		if @place == nil
			redirect_to "/", notice: "Place not found."
		end
	end
	
#challenge two
	def delete
		@place = Place.find_by(:id => params["id"])
		@place.delete
		redirect_to "/"
	end
	
#Challenge three
	def new
	end

	def create
		Place.create(title: params["title"], photo_url: params["photo_url"], 
		price: (params["price"].to_f * 100).to_i, description: params["description"])
		redirect_to "/"
	end


	def edit
		@place = Place.find_by(:id => params["id"])
	end


	def update
		puts "&&&&&&&&&&& #{(params["price"].to_f * 100).to_i}"

		updated_place = Place.find_by(id: params["id"])
		updated_place.title = params["title"]
		updated_place.photo_url = params["photo_url"]
		updated_place.price = (params["price"].to_f * 100).to_i
		updated_place.description = params["description"]
		updated_place.save
		
		redirect_to "/"
	end


	#def add_review
	#	Review.create(reviewed_place_id: params["id"], title: params["review_title"], rating: params["review_rating"], description: params["review_description"])
		
	#	redirect_to "/places/#{params["id"]}"
	#end

end

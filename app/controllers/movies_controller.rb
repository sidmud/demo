class MoviesController < ApplicationController
	def index
		@movies = Movie.all
	end
	def show
		@movies = Movie.find(params[:id])
	end
	def new
		@movies = Movie.new()
	end
	def create
		@movies = Movie.new()
		if @movies.save
			redirect_to movies_path
		end
	end
	def edit
		@movies = Movie.find(params[:id])
	end
	def update
		@movies = Movie.find(params[:id])
		if @movies.update_attributes(allowed_params)
			redirect_to movies_path
		else
		render new
		end
	end
	def destroy
	end
private
	def allowed_params
		params.require(:movie).permit(:name, :songs_attributes => [:id,:name,:composer,:_destroy], :actors_attributes => [:id,:name,:_destroy], :movie_actor_attributes => [:id,:movie_id,:actor_id,:_destroy])
	end
end

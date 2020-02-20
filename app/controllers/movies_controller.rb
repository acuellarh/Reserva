class MoviesController < ApplicationController
  def index
    @movies = Movie.all.order(created_at: :desc)
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.create(movie_params)
    redirect_to movies_path
  end

  def destroy
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :description, :url, :date)
  end
  
end
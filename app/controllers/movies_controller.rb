class MoviesController < ApplicationController
  def search
    if params[:search]
      $results=SearchMovie.new(params[:search][:title]).perform
      redirect_to root_path
    end
  end
end

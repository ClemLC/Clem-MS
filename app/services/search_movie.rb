class SearchMovie
  def initialize(movie)
    @movie=movie
  end

  def perform
    log_in
    search_a_movie(@movie)
  end

  def log_in
    Dotenv.load
    Tmdb::Api.key(ENV['TMDB_KEY'])
  end

  def search_a_movie(title)
    Tmdb::Movie.find(title)
  end
end

class Movie < ActiveRecord::Base
  #added to try and get the stupid thing to pass. this class is so unguided and terrible
  def self.similar_movies movie_title
    director = Movie.find_by(title: movie_title).director
    return nil if director.blank? or director.nil?
    Movie.where(director: director).pluck(:title)
  end
end

class Movie < ActiveRecord::Base
    def self.ratings_list
        return ['G','PG','PG-13','R']
    end
    
    def self.use_ratings(ratings_list, sort_by)
        movies = Movie.where(:rating => ratings_list).order(sort_by)
        return movies 
    end
end
class Movie < ActiveRecord::Base

    def self.find_all_movies_by_year(year)
        Movie.where(year: year)
    end
    # create method
    def self.create_with_title(title)
        Movie.create(title: title)
    end

    # Returns first item
    def self.first_movie
        Movie.first
    end

    # Returns last item
    def self.last_movie
    Movie.last
    end

    # Movie count
    def self.movie_count
        Movie.count
    end
    
    # finds movie with id
    def self.find_movie_with_id(id)
        Movie.find(id)
    end
    
    #finds movie with attributes
    def self.find_movie_with_attributes(attributes)
        Movie.find_by(attributes)
    end
    
    #find movies after 2002
    def self.find_movies_after_2002
        Movie.where("release_date > 2002 ")
    end

    # update with attributes
    def update_with_attributes(attributes)
        self.update(attributes)
   end
    
   #    update all titles
   def self.update_all_titles(title)
    Movie.update(title: title)
   end

#    delete by id
def self.delete_by_id(id)
    Movie.delete(id)
end

# delete all movies
def self.delete_all_movies
    Movie.destroy_all
end

end

module PawSearch
class AnimalShelter

attr_accessor :name, :location

    @@all = [] 

    def initialize()
       #use mass reassignment

    end

    def self.load_by_location(location) 
        API.yelp_search("animal shelter",location )
    end

    def save
        @@all << self
    end

    def self.destroy_all
        self.all.clear 
    end

    def self.all 
        @@all 

    end 


 end
end
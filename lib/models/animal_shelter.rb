
# module PawSearch
# class AnimalShelter

# attr_accessor :name, :location

#     @@all = [] 

#     def self.all #provide access to the @@all array ('getter')
#         @@all 
#     end 

#     attr_accessor :id, :name, :location, :phone, :rating, :url  # define attributes for mass assignment from hash

#     def initialize(attributes = {})
#         attributes.each do |attribute_name, attribute_value|
#             if self.respond_to?("#{attribute_name}=") #is it there?
#                 self.send("#{attribute_name}=", attribute_value)
#             end
#         end       
#     end

#     def self.load_by_location(location) 
#         search_results = API.yelp_search("animal shelter",location )
#         #now call create to instantiate and load objects into @@all, overwrites contents for each location entered by user
#         @@all = self.create_from_search_results(search_results)
#     end

#     def self.create_from_search_results(search_results)
#         search_results.collect do |shelter_info_hash|
#             self.new(shelter_info_hash)
#         end
#     end

   
#  end # class
# end #module
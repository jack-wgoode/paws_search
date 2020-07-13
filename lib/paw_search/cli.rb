require "pry"

module PawSearch

    class CLI

        def initialize
            @input = ""
        end
      
          def start
            puts "Welcome to Paw_Search! Your new best friend is just one search away."
            
            set_location
            list_animal_shelters
            ask_for_choice
            while @input != "exit"  && @input != "back"
              if valid?
                puts AnimalShelter.find_by_number(@input).details
      
              else
                puts "Whoops! I didn't get that. Try again?"
              end
              ask_for_choice
            end
          end
      
          def set_location 
            puts "So we can find the nearest adoption center, where are you?"
            @location = gets.chomp
            AnimalShelter.load_by_location(@location)
          end
        
          def list_animal_shelters 
            AnimalShelter.all.each.with_index(1) do |shelter, index|
              puts "#{index}. #{shelter.name}"
            end
          end
      
          def ask_for_choice
            list_choices
            @input = gets.strip
          end
      
          def list_choices 
            puts [
              "To see more information about a adoption center or animal shelter, type it's number and hit enter",
              "If you'd like to return to the main menu and do another search, type 'back'",
              "If you'd like to exit the program, simply type 'exit'"
            ]
          end
      
          def valid?
            @input.to_i.between?(1, AnimalShelter.all.length)
          end
   
     
    end
   end
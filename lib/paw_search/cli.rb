require "pry"

module PawSearch

    class CLI

        def initialize
            @input = ""
        end
      
          def start
            puts "\nWelcome to PawSearch! Your new best friend is just one search away."
            
            set_location
            list_animal_shelters
            ask_for_choice
            while @input != "exit"  && @input != "back"
              if valid?
                puts AnimalShelter.find_by_number(@input).details
      
              else
                puts "That was not a valid choice, Check the list and try again"
              end
              ask_for_choice
            end
          end
      
          def set_location 
            puts "So that we can find an adoption center near you, enter your location."
            @location = gets.chomp
            AnimalShelter.load_by_location(@location)
          end
        
          def list_animal_shelters
              puts "" 
            AnimalShelter.all.each.with_index(1) do |shelter, index|
              puts "#{index}. #{shelter.name}"
            end
              puts ""
          end
      
          def ask_for_choice
            list_choices
            @input = gets.strip.downcase
            start if @input == 'back'
            return if @input == 'exit'
          end
      
          def list_choices 
            puts ["To see more information about a adoption center or animal shelter, type it's number and hit enter",
              "If you'd like to return to the main menu and do another search, type 'back' and press enter.",
              "If you'd like to exit the program, simply type 'exit' and press enter."]
          end
      
          def valid?
            @input.to_i.between?(1, AnimalShelter.all.length)
          end
      
    end
   end
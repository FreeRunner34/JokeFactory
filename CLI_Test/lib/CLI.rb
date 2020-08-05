class CLI 

    @name = name
    @users_choice = users_choice

    def run 
        system("clear")
        welcome
        until @users_choice == "3"
            main_menu
        end 
        puts"Sorry to see you go #{@name}! See ya next time!"
    end 

    def welcome 
    puts "welcome to the Joke Factory"
    puts "I'm the Joker whats your name?"
    name = gets.chomp
    puts"lets get down to business would you like to hear a funny joke? you have two options"
    end 

    def main_menu
    puts"What would you like to do???"
    puts"option 1: I can tell you a pretty funny Joke."
    puts "option 2: would you like to hear a Joke like no other?"
    puts "option 3: EXIT"

    users_choice = gets.chomp 

        if @users_choice == "1"
            #tells joke 1 
            dad_jokes

        elsif @users_choice == "2"
            #tells chuck norris joke 
            chuck_norris

        elsif @users_choice == "3"
            #exits program
            
        else 
            puts"Invalid Input try!! again#{@name}".colorize(:blue)
        end 
    end 


    def dad_jokes
        api1 = API_dad_jokes.new
        puts api1
    end 

    def chuck_norris
        api2 = API_chuck_norris.new
        puts api2
    end 
end 

#input=gets.chomp

# api1 = API_dad_jokes.new
# api2 = API_chuck_norris.new

# dad_joke = api1.call_dad_joke
# chuckles = api2.call_chuck_norris_joke
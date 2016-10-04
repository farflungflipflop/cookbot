require_relative 'warehouse.rb'

#METHODS
def protein(protein_input)
    #Need to create array for all meats
    if MEAT.include?(protein_input) || POULTRY.include?(protein_input)
        puts "\nAlright, this will be a meat-based meal"
    elsif FISH_ARR.include?(protein_input)
        puts "\nAlright, this will a fish-based meal"
    else

        puts "\nAlright this will be a vegetarian meal"
    end
end

def carbohydrates(carb_input)
    if carb_input == "vegetables"
        puts "What vegetables do you have? (say 'none' if you don't have any)"
        carb_input2 = gets.chomp

        if user_input4 == "none"
            puts "Ok let me see what we can do. Do you have any other sort of carbohydrates?"
        else
            puts "Ok, this meal will include #{carb_input2}"
        end
    else
        puts "Ok, this meal will include #{carb_input}"
    end
end

def fats(fats_input)
    if fats_input == "Olive oil"
      #Why is the puts not showing?
      puts "Congrats, olive oil is one of the healthiest and most versatile cooking fats in the world."
      puts "Always try to keep some handy when cooking"

        if fats_input == "Butter"
        #Same issue here
            puts "Cool! butter has a distinguished nutty aroma and velvetty mouthfeel which has made it popular across the world."
        else
            puts "I'm sorry I don't understand"
        end
    else
        puts "Okay, we will then use #{fats_input} to cook this meal"
    end
end

def summary(confirm_input)
    if confirm_input == "Yes"
        puts "Alright, let me consult the internet and provide you with a tasty recipe!"
    else
        puts "My apologies, let's try again."
        interact(user_input)
    end
end

def interact(user_input)
    #savory or sweet interaction
    puts "Let's get started.\nAs of now, I'm only equip to help with savory recipes. I hope that's fine"
    user_input2 = gets.chomp
    puts "\nOkay #{user_input}, lets cook something savory"

    #protein interaction
    puts "\nFirst, I need to you know whats in your fridge. \nThere are three essential components to a meal. Protein, carbohydrates and fats. Protein can be found in meat, poultry, seafood, beans and peas, eggs, nuts and seeds. \nWhat kind of protein is in your fridge?\n 1. Chicken\n 2. Beef\n 3. Fish\n 4. Other\n"
    protein_input = gets.chomp.capitalize
    protein(protein_input)

    #carbohydrates interaction
    puts "\nNow tell me what carbohydrates you are working with \n Carbohydrates are sugars and starches which can be found in fruits, grains, \nvegetables and milk products.\n What kind of carbohydrates are in you fridge?\n"
    carb_input = gets.chomp.capitalize
    carbohydrates(carb_input)

    #fats interaction
    puts "\nWe're almost done here. We need to determine which kind of fats you will use. \n Usually butter, vegetable oils (olive, peanuts, canola) are used for savory cooking.\n What kind of fats do you have in your fridge?\n"
    fats_input = gets.chomp.capitalize
    fats(fats_input)

    #summary interaction
    puts "lets finish this by summarizing the contents of you fridge.\n From what I understand, your meal will consist of:"
    puts protein_input
    puts carb_input
    puts fats_input
    puts "\nDo you confirm this selection?"
    confirm_input = gets.chomp.capitalize
    summary(comfirm_input)

end

 #MAIN LOGIC
def main


    puts "Whats your name?"
    user_input = gets.chomp.capitalize

    greeting = GREETING.sample
    greeting_2 = PHRASE.sample

    puts greeting + user_input

    if user_input == "Marc"
        puts "hello owner."
    elsif NAME.include?(user_input)
        interact(user_input)
    else
        puts "I'm sorry #{user_input}, I can't interact with you if you aren't my creators friend"
    end
end

main()

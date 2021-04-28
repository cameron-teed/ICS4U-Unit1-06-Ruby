##
# The roll dice program gets you to choose the sides of a dice
# then outputs a random number within the parameters
#
# @author  Cameron Teed
# @version 1.0
# @since   2020-04-28
# frozen_string_literal: true

def roll_die(side_amounts)
  # checks if you inputted the correct number
  if side_amounts > 1
    # Gets random number
    random_int = rand(1..side_amounts)
    puts
    puts "The random number: #{random_int}"
    puts
    puts 'Done'
  else
    # if these parameters are not met, ask them to meet them
    puts
    puts 'Please enter a number greater than 1'
  end
end

begin
  # Asks user for input
  puts 'Please enter the range of your dice (1-?):'
  # Gets the user input
  side_amounts = gets.chomp
  # Converts the input into a int
  side_amounts = side_amounts.to_i
  roll_die(side_amounts)
rescue StandardError
  # If the input cannot be converted into a int, tell the user that they need to input the correct numbers
  puts 'Please enter a valid input'
end

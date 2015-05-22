# Ask the user to give me a number.
puts "Please give me a number: "

# Grab that number and transform it into an integer.
# Set the resulting number to a variable Number 1.
number_1 = gets.to_i

def always_three(number_1)

## Add 5 to Number 1
#new_number = number_1 + 5
## Multiply the result by 2.
#new_number *= 2
## Subract 4.
#new_number -= 4
## Divide by 2.
#new_number /= 2
## Subtract the first number from the final number.
#new_number -= number_1
# Tell us the final number.

puts "The final number is always " + (((number_1 + 5) * 2 - 4) / 2 - number_1).to_s + "!"
    
end

always_three(number_1)
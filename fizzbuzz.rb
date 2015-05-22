# Print out numbers 1--100
number = 1

while number <= 100

# For multiples of 3 and 5 print "FizzBuzz"
    if (number % 3 == 0) && (number % 5 == 0)
        print "FizzBuzz\n"

# For multiples of 3 print "Fizz"
    elsif number % 3 == 0
        print "Fizz\n"

# For multiples of 5 print "Buzz"
    elsif number % 5 == 0
        print "Buzz\n"
    else
        print "#{number}\n"
    end
    number += 1
end
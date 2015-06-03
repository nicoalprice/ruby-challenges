require 'yahoo_weatherman'

# User inputs zipcode.

puts "What is your zipcode?"
location = gets.chomp

# Convert temperature from C to F. Thanks to Skillcrush classmate Mary Huynh.

def temp_converter(temp)
    temp = temp * 1.8 + 32
    return temp.to_i
end

# Accept location as parameter and use weather gem to display the current temperature (in Fahrenheit) and conditions for that location.

def current_weather(location)
    client = Weatherman::Client.new
    temperature = temp_converter(client.lookup_by_location(location).condition['temp'])
    conditions = client.lookup_by_location(location).condition['text'].downcase
    puts "The current weather for #{location} is #{temperature} degrees Fahrenheit and #{conditions}."
end

current_weather(location)


# Spit out a cutesie message about the weather

# Find 5 day forecast

require 'yahoo_weatherman'

# User inputs zipcode.

puts "What is your zipcode?"
zipcode = gets.chomp

# Need to figure out how to simplify code by using this method
#def get_location(zipcode)
 #   client = Weatherman::Client.new
 #   client.lookup_by_location(zipcode)
#end

# Convert temperature from C to F. Thanks to Skillcrush classmate Mary Huynh.

def temp_converter(temp)
    temp = temp * 1.8 + 32
    return temp.to_i
end

# Accept location as parameter and use weather gem to display the current temperature (in Fahrenheit) and conditions for that location.


def current_weather(zipcode)
    client = Weatherman::Client.new
    client.lookup_by_location(zipcode)
    
    temperature = temp_converter(client.lookup_by_location(zipcode).condition['temp'])
    conditions = client.lookup_by_location(zipcode).condition['text'].downcase
    puts "The current weather for #{zipcode} is #{temperature} degrees Fahrenheit and #{conditions}."
end

current_weather(zipcode)


# Spit out a cutesie message about the weather

# Find and display 5 day forecast

def weather_forecast(zipcode)
    client = Weatherman::Client.new
    client.lookup_by_location(zipcode)
    
    client.lookup_by_location(zipcode).forecasts.each do |forecast|
        puts forecast['day'].to_s + ' is going to be ' + forecast['text'].downcase + ' with a low of ' + forecast['low'].to_s + ' and a high of ' + forecast['high'].to_s
    end
end
 
today = Time.now.strftime('%w').to_i

weather_forecast(zipcode)


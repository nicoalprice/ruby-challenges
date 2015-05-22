def get_user_name
    puts "What's your name?"
    name = gets.capitalize.to_s.chomp 
end

def determine_current_hour
	current_time = Time.new
	current_hour = current_time.hour
end
 
def greeting
	current_hour = determine_current_hour
    name = get_user_name
	
    if(current_hour > 3 && current_hour < 12)
		time = "morning"
	elsif(current_hour > 12 && current_hour < 18)
		time = "afternoon"
	elsif(current_hour > 18 || current_hour < 2)
		time = "evening"
	end
	
    print "Good #{time}, #{name}!"
    
end
greeting
puts "Are you nice to me? Yes or no."

answer = gets.chomp.downcase
number_of_ways = 1

while
	answer == "yes"
	puts "I love you, let me count the ways...\n#{number_of_ways}..."
	number_of_ways += 1
	puts "Are you nice to me? Yes or no."
	answer = gets.chomp.downcase
end
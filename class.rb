class Pet

    attr_accessor :name, :owner_name

	def ownership
		return "#{@name} belongs to #{@owner_name}."
	end

end

class Cat < Pet

	def meow
		return "Meow, meeeooow!"
	end
end

class Dog < Pet

	def speak
		return "Bark, bark!"
	end

end

my_cat = Cat.new
my_cat.name = "Crumpet"
my_cat.owner_name = "Nicoal"

my_dog = Dog.new
my_dog.name = "Barkley"
my_dog.name = "Todd"

puts my_cat.ownership
puts my_dog.speak

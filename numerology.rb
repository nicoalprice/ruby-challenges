#-----Ask user for their birthday in the MMDDYYYY format.

puts "Enter your birthdate in the MMDDYYYY format: "

#-----Use gets to get birthdate and a variable.

birthdate = gets.chomp
#puts "Your birthdate is #{birthdate}."

#-----Convert birthdate numbers to integer
#-----Add all the numbers of the birthdate together and assign the result to a new variable.

def birth_path(birthdate)

birthdate_sum_1 = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i + birthdate[4].to_i + birthdate[5].to_i + birthdate[6].to_i + birthdate[7].to_i

#puts "First sum: #{birthdate_sum_1}."

#-----Convert number back to a string

birthdate_sum_1 = birthdate_sum_1.to_s

#Add the two digits together.

birthdate_sum_2 = birthdate_sum_1[0].to_i + birthdate_sum_1[1].to_i

#puts "Second sum: #{birthdate_sum_2}."

#-----If the sum of the two digits results in more than one digit, reduce by adding the digits together again.

if birthdate_sum_2 > 9
    birthdate_sum_2.to_s
    number = birthdate_sum_2[0].to_i + birthdate_sum_2[1].to_i
else 
	number = birthdate_sum_2
end
    return number

end

number = birth_path(birthdate)


#-----Display birth path number and meaning to user using case statement.

def birth_path_message(number)    

case number
when 1
    message = "Your birth path number is #{number}.\nOne is the leader. The number one indicates the ability to stand alone and is a strong vibration. Ruled by the Sun."
when 2
    message =  "Your birth path number is #{number}.\nThis is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
when 3
    message = "Your birth path number is #{number}.\nNumber Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
when 4
    message = "Your birth path number is #{number}.\nThis is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
when 5
    message = "Your birth path number is #{number}.\nThis is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
when 6
    message = "Your birth path number is #{number}.\nThis is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
when 7
    message = "Your birth path number is #{number}.\nThis is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
when 8
    message = "Your birth path number is #{number}.\nThis is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
when 9
    message = "Your birth path number is #{number}.\nThis is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars. "
end
    
end
#---end of message method

message = birth_path_message(number)  

puts message
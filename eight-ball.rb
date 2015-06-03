require 'rubygems'
require 'twilio-ruby'

account_sid = "ACc151e21eab04c442f16d941c97ec40f3"
auth_token = "ca127e85b5e6e1cf00ef3bdcffb1df54"

@client = Twilio::REST::Client.new(account_sid, auth_token)

#Ask for a question

def send_greeting
	greeting = @client.account.messages.create(
		:from => "+15039747874",
		:to => "+15035488578",
		:body => "Ask the Magic 8 Ball any yes or no question: "
	)

	puts greeting.to
end

send_greeting

#Accept a question

question = gets.chomp

#Select and send a random answer from possible answers (array) to the sender.

response = ["It's possible.", "Not likely.", "Yeah, right.", "Doubtful.", "Yes, of course!", "Signs point to yes.", "Yup.", "Nope.", "Ask again later."]

message = @client.account.messages.create(
	:from => "+15039747874",
	:to => "+15035488578",
	:body => response.sample
)

puts message.to
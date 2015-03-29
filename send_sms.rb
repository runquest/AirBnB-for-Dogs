require 'rubygems'
require 'twilio-ruby'
 
# Get your Account Sid and Auth Token from twilio.com/user/account
account_sid = 'AC249cb92af410b2c093af3ff89bc48e2e'
auth_token = 'e3b8d6c5c14e423ab554703bad744d52'
@client = Twilio::REST::Client.new account_sid, auth_token
 
message = @client.account.messages.create(:body => "Test Message",
    :to => "+16043398460",     # Replace with your phone number
    :from => "+16042278405")   # Replace with your Twilio number
puts message.sid
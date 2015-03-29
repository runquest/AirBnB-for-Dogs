# require 'twilio-ruby'

def send_message_to_host(host, dog)
  # Get your Account Sid and Auth Token from twilio.com/user/account
  account_sid = 'AC249cb92af410b2c093af3ff89bc48e2e'
  auth_token = 'e3b8d6c5c14e423ab554703bad744d52'
  @client = Twilio::REST::Client.new account_sid, auth_token
   
  message = @client.account.messages.create(:body => "Hey #{host.name}! #{dog.name} would like to know if you could host him. Check out his profile: http://localhost:3000/dogs/#{dog.id}",
      :to => "+16043398460",     # Replace with your phone number @host.phone_number
      :from => "+16042278405")   # Replace with your Twilio number
end
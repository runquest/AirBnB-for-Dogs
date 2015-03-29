require_relative './helper_methods'
# def send_message_to_host(host, dog)
#   # Get your Account Sid and Auth Token from twilio.com/user/account
#   account_sid = 'AC249cb92af410b2c093af3ff89bc48e2e'
#   auth_token = 'e3b8d6c5c14e423ab554703bad744d52'
#   @client = Twilio::REST::Client.new account_sid, auth_token
   
#   message = @client.account.messages.create(:body => "Hey #{host.name}! #{dog.name} would like to know if you could host him. Check out his profile: http://localhost:3000/dogs/#{dog.id}",
#       :to => "+16043398460",     # Replace with your phone number @host.phone_number
#       :from => "+16042278405")   # Replace with your Twilio number
# end
# Homepage (Root path)
get '/' do
  if params[:city].present?

  @hosts = Host.where("city LIKE ?", "#{params[:city]}%")

  erb :hosts
  else
    erb :index
  end
end

get '/hosts' do 
  @hosts = Host.all 
  erb :hosts
end

get '/new' do 
  erb :new
end

get '/send_message/:id' do
  @host = Host.find params[:id]
  dog = Dog.where(name: 'ruby').first
  send_message_to_host(@host, dog)

  erb :confirmation
end

post '/users' do 
  @host = Host.new(
    name: params[:name],
    email: params[:email],
    address: params[:address],
    city: params[:city],
    country: params[:country],
    description: params[:description],
    password: params[:password],
    username: params[:username]
    )
  @host.save
  @host = Host.where(username: params[:username]).first
  id = @host.id
  redirect "/hosts/#{id}"
end

get '/hosts/:id' do 
  @host = Host.find params[:id]
  erb :show_host
end

get '/dogs/:id' do 
  @dog = Dog.find params[:id]
  erb :show_dog
end


get '/test/'do
erb :hosts
end
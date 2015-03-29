require_relative './helper_methods'
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

get '/send_message' do

  host = @host 
  dog = Dog.find(19)
  send_message_to_host(host, dog)

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
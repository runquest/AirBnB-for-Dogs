# Homepage (Root path)
get '/' do
  erb :index
end

get '/hosts' do 
  @hosts = Host.all 
  erb :hosts
end

get '/hosts/:id' do 
  @host = Host.find params[:id]
  erb :show_host
end

get '/dogs/:id' do 
  @dog = Dog.find params[:id]
  erb :show_dog
end
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
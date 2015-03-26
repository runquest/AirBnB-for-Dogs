configure do
  # Log queries to STDOUT in development
  if Sinatra::Application.development?
    ActiveRecord::Base.logger = Logger.new(STDOUT)
  end

  if ENV['RACK_ENV'] == 'test'
    puts "Connecting to test database..."
    set :database, {
      adapter: "sqlite3",
      database: "db/test.sqlite3"
    }
  else
    puts "Connecting to development database..."
    set :database, {
      adapter: "sqlite3",
      database: "db/development.sqlite3"
    }
  end

  # Load all models from app/models, using autoload instead of require
  # See http://www.rubyinside.com/ruby-techniques-revealed-autoload-1652.html
  Dir[APP_ROOT.join('app', 'models', '*.rb')].each do |model_file|
    filename = File.basename(model_file).gsub('.rb', '')
    autoload ActiveSupport::Inflector.camelize(filename), model_file
  end

end

require 'rake'
require "sinatra/activerecord/rake"
require ::File.expand_path('../config/environment', __FILE__)

Rake::Task["db:create"].clear
Rake::Task["db:drop"].clear

# NOTE: Assumes SQLite3 DB
# desc "create the database"

task "db:create" do
  touch 'db/db.sqlite3'
end

desc "create the database"
task "db:create_test" do
  touch 'db/test.sqlite3'
end

desc "drop the database"
task "db:drop" do
  rm_f 'db/db.sqlite3'
end

desc "drop the database"
task "db:drop_test" do
  rm_f 'db/test.sqlite3'
end

desc 'Retrieves the current schema version number'
task "db:version" do
  puts "Current version: #{ActiveRecord::Migrator.current_version}"
end

task "db:populate" do
  Host.delete_all
  eating = Host.create!(name: "Eli", address: "234 W. Hastings", email: "cheesepepsi+host1@gmail.com", phone_number: "412 237 2819", city: "Vancouver", country: "Canada", description: "Awesome person", profile_picture: "http://www.aestheticrealism.net/KKphoto.jpg")
  zen = Host.create!(name: "Betty", address: "1000 W. Hastings", email: "cheesepepsi+host2@gmail.com", phone_number: "604 829 2669", city: "Vancouver", country: "Canada", description: "I love dogs!!", profile_picture: "https://pbs.twimg.com/profile_images/2029688967/Betty_Photo_400x400.jpg")
  ships = Host.create!(name: "Sally", address: "89 Pender", email: "cheesepepsi+host3@gmail.com", phone_number: "604 729 9201", city: "Vancouver", country: "Canada", description: "Awesome website guys!", profile_picture: "http://news.patientslikeme.com/sites/patientslikeme.newshq.businesswire.com/files/bio/additional/Sally_Okun_Formal_Headshot_Low-Res.jpg")
  cats = Host.create!(name: "Bob", address: "234 W. Hastings", email: "cheesepepsi+host4@gmail.com", phone_number: "604 237 2819", city: "Vancouver", country: "Canada", description: "Awesome person", profile_picture: "https://d3n8a8pro7vhmx.cloudfront.net/bobbrownfoundation/pages/1/attachments/original/1392468553/bob-dappled-shade.jpg?1392468553")

  Dog.delete_all
  user1 = Dog.create!(name: "Ruby", breed: "Portuguese waterdog", address: "645 Howe Street", email: "cheesepepsi+dog1@gmail.com", phone_number: "412 627 8293", city: "Vancouver", country: "Canada", zipcode: "V6C 2Y9", description: "Friendly, kind dog who enjoys walks, tennis balls and peanut butter. Although she sometimes enjoys playing, she definitely prefers a calm afternoon, resting on the sofa.", profile_picture: "http://www.pwdca.org/assets/images/breed/p5.jpg")
  user2 = Dog.create!(name: "Jim", breed: "golden retriever", address: "123 vancouver", email: "cheesepepsi+dog2@gmail.com", phone_number: "12345", city: "Vancouver", country: "Canada", zipcode: nil, description: "Jim is a sports lover and will happily join you for a game of fetch or frisbee. Definitely a great dog if you enjoy spending time exercising with dogs. He's always a lot of fun.", profile_picture: "http://animalia-life.com/data_images/dog/dog5.jpg")

  Booking.delete_all
  Booking.create!(host_id: eating.id, dog_id: user1.id, dog_feedback: 5, owner_feedback: 3, dog_comments: "amazing home!", owner_comments: "very cute dog")
  Booking.create!(host_id: eating.id, dog_id: user2.id, dog_feedback: 5, owner_feedback: 3, dog_comments: "I love this host!", owner_comments: "awesome dog")
  Booking.create!(host_id: zen.id, dog_id: user2.id, dog_feedback: 4, owner_feedback: 5, dog_comments: "I love this host!", owner_comments: "This dog made my day. Very friendly.")

end
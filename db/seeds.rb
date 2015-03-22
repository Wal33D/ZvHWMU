User.create!(:name => "Admin",
             :email => "admin@zvh.edu", 
         		 :password =>"password", 
         		 :created_at => 2.days.ago,
             :last_sign_in_at => 1.day.ago,
             :updated_at => 5.hours.ago).make_admin

3.times do |n|
 name = Faker::Name.name 
 email = Faker::Internet.email
 avatar = Faker::Avatar.image( "50x50")
 password = "password"
User.create!(:name => name,
             :email => email, 
             :avatar => avatar,
         		 :password => password, 
         		 :created_at => 2.days.ago,
             :last_sign_in_at => 1.day.ago,
             :updated_at => 5.hours.ago)
	end




    heroku rake db:drop && heroku rake db:create && heroku rake db:migrate && heroku rake db:schema:dump && heroku rake db:seed && rails s

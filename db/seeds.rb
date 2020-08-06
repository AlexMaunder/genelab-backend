# Users
User.destroy_all
u1 = User.create :email => 'test123@test.com', :password => 'chicken'
u2 = User.create :email => 'alex@hotmail.com', :password => 'chicken'
u3 = User.create :email => 'test1234@hotmail.com', :password => 'chicken'
puts "#{ User.count } users"

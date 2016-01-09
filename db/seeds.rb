u = User.new(:email=>"karasoi@poczta.onet.pl", :password =>"password", :password_confirmation=>"password")
u.save
puts "user created"

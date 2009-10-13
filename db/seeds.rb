# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
User.create(:first_name => "Test", :last_name => "Admin", :login => "admin", :password => 'test-admin', :password_confirmation => 'test-admin', :email => 'donnoman@donovanbray.com')
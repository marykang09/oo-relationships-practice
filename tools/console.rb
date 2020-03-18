require 'pry'
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Variables
mary = Passenger.new("Mary")
alex = Passenger.new("Alex")
jordan = Driver.new(1)
john = Driver.new(2)
to_work = Ride.new(5, mary, jordan)
to_gym = Ride.new(100, mary, jordan)
to_store = Ride.new(2, alex, jordan)
to_bar = Ride.new(100, alex,john)

#Testing Passenger



binding.pry

0
##Airbnb
# #Testing Listing
# my_house = Listing.new("My House")
# my_house.city_name = "Washington, DC"
# my_house
# boat_house = Listing.new("Boat House")
# boat_house.city_name = "Miami"
# tree_house = Listing.new("Tree House")
# tree_house.city_name = "Backyard"
# #Testing Guest
# richard = Guest.new("Richard")
# mary = Guest.new("Mary")
# bob = Guest.new("Bob")
# bob2 = Guest.new("Bob")
# #Testing Trip
# richards_trip = Trip.new(my_house, richard)
# richardssecond_trip = Trip.new(my_house, richard)
# marys_trip = Trip.new(my_house, mary) 
# friends_trip = Trip.new(my_house, bob)
# bobssecond_trip = Trip.new(tree_house, bob)

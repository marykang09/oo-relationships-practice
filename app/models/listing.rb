require 'pry' 

class Listing
    attr_accessor :trip_count_num, :city_name
    attr_reader :listing_name

    @@all_listings = []
    @@listing_count = 0

    def initialize(listing_name)
        @listing_name = listing_name 
        @@all_listings << self 
        @@listing_count += 1
        @city_name = city_name
        @trip_count_num = 0
    end 

    def self.listing_count
        self.all.count 
    end 

    def guests 
        all_guests = Trip.all.select { |trips| trips.listing == self }
        all_guests.map do |guests| guests.names 
        end 

            #guests
            # returns an array of all guests who have stayed at a listing

    end 

    def trips 
        #all_trips = []
        all_trips = Trip.all.select { |trips| trips.listing == self }
        all_trips
        #returns an array of all trips at a listing 
    end 

    def trip_count 
        all_trips = Trip.all.select { |trips| trips.listing == self }
        @trip_count_num = all_trips.count 
        all_trips.count 
    end 

    def self.all 
        @@all_listings
    end 
    # .all
    # returns an array of all listings

    def self.find_all_by_city(city_name)
        listings_by_city = self.all.select {|listings| listings.city_name == city_name}
        listings_by_city
    end

    def self.most_popular 

       trip_count_array =  Listing.all.each { |listings| listings.trip_count }
    most_popular = trip_count_array.max_by do |listing| listing.trip_count_num
    end 
    most_popular
    
       

        #most_popular = self.all.max_by(trip_count_num)
        #most_popular 

        # .most_popular
        # finds the listing that has had the most trips
        # counts number of trips per listing, returns listing with highest numebr of trips
    end

    def self.least_popular 

        trip_count_array =  Listing.all.each { |listings| listings.trip_count }
     least_popular = trip_count_array.min_by do |listing| listing.trip_count_num 
     end 
     least_popular

     end

end 


# Listing
# #guests
# returns an array of all guests who have stayed at a listing

# #trips
# returns an array of all trips at a listing

    #X trip_count
    #X returns the number of trips that have been taken to that listing

    #X .find_all_by_city(city)
    #X takes an argument of a city name (as a string) and returns all the listings for that city

# .most_popular
# finds the listing that has had the most trips
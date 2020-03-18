class Passenger
    attr_reader :name, :passenger, :driver, :distance
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    
    #returns all rides a passenger has been on
    def rides
        Ride.all.select do |ride|
            ride.passenger == self
        end
    end

    #returns all drivers a passenger has ridden with
    def drivers
        self.rides.map do |ride|
            ride.driver
        end.uniq
    end

    #calculates the total distance the passenger has travelled
    def total_distance
        self.rides.inject(0) {|sum,ride| sum + ride.distance}
    end

    #find all passengers who have travelled over 100 miles
    def self.premium_members
        self.all.select do |passenger|
            passenger.total_distance > 100
        end
    end

end



# # #### Passenger
# X - a passenger has many rides
# X - a passenger is initialized with a name 
# X - #name (attr_reader)
#     returns the name of the passenger
# X - #rides
#     returns all rides a passenger has been on
# X - #drivers
#     returns all drivers a passenger has ridden with
# X - .all
#     returns an array of all passengers
# X - #total_distance
#     should calculate the total distance the passenger has travelled with the
#     service
# X - .premium_members
#     should find all passengers who have travelled over 100 miles with the service

class Ride

    attr_reader :distance, :passenger, :driver
    @@all = []

    def initialize(distance, passenger, driver)
        @distance = distance
        @passenger = passenger
        @driver = driver
        @@all << self
    end

    def self.all
        @@all
    end

    #find the avg distance of all rides
    #find the total distances divided by total rides
    def self.average_distance
        ride_distances = self.all.inject(0){|sum,ride| sum + ride.distance}
        ride_count = self.all.count
        ride_distances.to_f / ride_count.to_f
    end



end



### Ride
# X - a ride belongs to a passenger and a driver
# X - a ride is initialized with a distance (as a float)
# X - #passenger
#      returns the passenger object for that ride
# X - #driver
#      returns the driver object for that ride
# X - #distance
#      returns the distance travelled for that ride
# X - .average_distance
#     should find the average distance of all rides
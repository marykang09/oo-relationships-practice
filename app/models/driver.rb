class Driver
    attr_reader :distance, :passenger, :driver, :name
    @@all = []

    def initialize(distance)
        @distance = distance
        @@all << self
    end

    def self.all
        @@all
    end

    # returns all rides a driver has made
    def rides
        Ride.all.select do |ride|
            ride.driver == self
        end
    end

    #returns the name of the passenger
    def name
        self.passengers.map do |passenger|
            passenger.name
        end
    end

    #returns all passengers a driver has had
    def passengers
        self.rides.map do |ride|
            ride.passenger
        end.uniq
    end

    #takes an arg of a distance
    #then returns all drivers who have exceed that mileage
    ##total of all drivers' distances
    ##return driver whose milage > distance
    def self.mileage_cap(distance)
    end


end



# # #### Driver
# X - a driver has many rides
# X - a driver is initialized with a distance 
# X - #name 
#     returns the name of the passenger
# X - #rides
#     returns all rides a driver has made
# X - #passengers
#     returns all passengers a driver has had
# X - .all
#     returns an array of all drivers
#   - .mileage_cap(distance)
#     takes an argument of a distance (float) and returns all drivers who have exceeded that mileage
class Cult
    attr_accessor :name, :location, :founding, :slogan
    @@all = []

    def initialize(name, location, founding, slogan)
        @name = name
        @location = location
        @founding = founding
        @slogan = slogan
        @@all << self
    end

    def self.all 
        @@all
    end

    def recruit_follower(follower, date)
        BloodOath.new(self, follower, date)
    end

    def bloodoaths
        BloodOath.all.select { |bo| bo.cult == self }
    end

    def cult_population
        bloodoaths.count
    end

    def self.find_by_name(name)
        self.all.select { |bo| bo.name == name }
    end

    def self.find_by_location(place)
        self.all.select { |bo| bo.location == place }
    end

    def self.find_by_founding_year(year)
        self.all.select { |bo| bo.founding == year }
    end


    
end
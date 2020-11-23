class Follower
    attr_accessor :name, :age, :motto
    @@all = []

    def initialize(name, age, motto)
        @name = name
        @age = age
        @motto = motto
        @@all << self
    end

    def self.all 
        @@all
    end

    def bloodoaths
        BloodOath.all.select { |bo| bo.follower == self }
    end

    def cults
        bloodoaths.map {|oath| oath.cult }
    end

    def join_cult(cult, date)
        BloodOath.new(cult, self, date)
    end

    def self.of_a_certain_age(age_to_join)
        self.all.select { |follower| follower.age > age_to_join }
    end


end
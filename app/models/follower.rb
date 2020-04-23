
    # ruby tools/console.rb 

require 'pry'

class Follower

    attr_reader :name, :age, :life_motto
    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age # integer
        @life_motto = life_motto # Defining purpose
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def cults
        # returns an Array of this follower's cults

        foll = BloodOath.all.select do |oath|
            oath.follower == self
        end
        foll.map { |oath| oath.cult.name}
    end

    def join_cult(cult)
        # takes in an argument of a Cult instance and adds this follower to the cult's list of followers
        BloodOath.new(cult, self) #, initiation_date
    end

    def self.of_a_certain_age(age)
        # takes an Integer argument that is an age and returns an Array of followers who are the given age or older

        anyos = self.all.select do |follower|
            follower.age == age
        end
        anyos.map { |follower| follower.name}

    end


end
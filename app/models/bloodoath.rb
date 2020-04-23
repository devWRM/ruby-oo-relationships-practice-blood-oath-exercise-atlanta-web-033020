
    # ruby tools/console.rb 

    require 'pry'

class BloodOath
    attr_reader :cult, :follower#, :initiation_date
    @@all = []

    def initialize(cult, follower) # initiation_date
        @cult = cult
        @follower = follower
       # @initiation_date = initiation_date
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def initiaion_date
        # returns a String that is the initiation date of this blood oath in the format YYYY-MM-DD.
    end




end



    # ruby tools/console.rb 
require 'pry'

class Cult
    attr_accessor :follower
    attr_reader :name, :location, :founding_year, :slogan
    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location # city
        @founding_year = founding_year # integer 2020
        @slogan = slogan # War cry
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def recruit_follower(follower)
        # takes in an argument of a Follower instance and adds them to this cult's list of followers
        # offering BloodOaths

        BloodOath.new(self, follower) #initiation_date

    end

    def cult_population
        # returns an Integer that is the number of followers in this cult
        
        foll = BloodOath.all.select do |oath|
            oath.cult == self
        end
        foll.length
    end

    def self.find_by_name(name)
        # takes a String argument that is a name and returns a Cult instance whose name matches that argument

        self.all.find do |cult|
            cult.name == name
        end
        

        ##self.all.find { |cult| cult.name == name }
    end

    def self.find_by_location(location)
        # takes a String argument that is a location and returns an Array of cults that are in that location

        loc = self.all.select do |cult|
            cult.location == location
        end
        loc.map { |cult| cult.name}

        ## self.all.select { |cult| cult.location == location }
    end

    def self.find_by_founding_year(year)
        # takes an Integer argument that is a year and returns all of the cults founded in that year

        loc = self.all.select do |cult|
            cult.founding_year == year
        end
        loc.map { |cult| cult.name}

        ## self.all.select { |cult| cult.founding_year == year}
    end
end
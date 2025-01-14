require "pry"

class Song
    @@all = []

    attr_accessor :name, :artist

    def initialize(name)
        @name = name
        @artist = nil

        @@all << self
    end

    def artist_name
        if self.artist == nil
            nil
        else
            self.artist.name
        end
    end

    def self.all
        @@all
    end

    # binding.pry
end
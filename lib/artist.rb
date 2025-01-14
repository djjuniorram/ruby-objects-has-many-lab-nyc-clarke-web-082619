class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @songs = []

        @@all << self
    end

    def add_song(song)
        song.artist = self
        self.songs << song
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song_by_name(song_name)
        new_song = Song.new(song_name)
        add_song(new_song)
    end

    def self.song_count
        Song.all.length
    end

    def self.all
        @@all
    end

end

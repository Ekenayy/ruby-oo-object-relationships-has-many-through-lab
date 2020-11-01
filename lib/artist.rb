require 'pry'
class Artist

    attr_accessor :name

    @@all = []

    def self.all
        @@all
    end 

    def initialize(name)
        @name = name
        @@all << self
    end 

    def songs
    Song.all.select {|songs| songs.artist == self}
    end
    
    def new_song(song_name, genre)
        Song.new(song_name, self, genre)
    end 

    def genres
        self.songs.map {|songs| songs.genre}
    end 

end 
require 'pry'

class Genre
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
        Song.all.select {|songs| songs.genre == self}
    end 

    def artists
        artist_array = []
        Song.all.select do |songs|
            if songs.genre == self
                artist_array << songs.artist
                #binding.pry
            end 
            #binding.pry
        end 
        artist_array
        #binding.pry
    end 

    
end 
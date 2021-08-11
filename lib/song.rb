class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

    def count
        @@count
    end
    
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << @artist
        @@genres << @genre
        
    end

    def self.count
        @@count 
    end

    def genres
        if !@@genres.include?(@genre)
            @@genres << @genre
        end
    end

    def name
        @name
    end

    def artist
        @artist
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end
end

new = Song.new('Hi', 'Yello', 'Rock')
p new.count
puts new.genres

newnew = Song.new('Yes', 'Red', 'Rap')
p newnew.count
p newnew.genres

yes = Song.new('No', 'Blue', 'Melodic')
p yes.count
p yes.genres




class Artist
  attr_accessor :name, :songs, :genres
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    song = Song.new(name)
    Song.genre = genre
    Song.artist = self
    @songs << song
    
  end
end
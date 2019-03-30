
class Artist

  @@all = []

  attr_accessor :name, :songs
  attr_reader :genres

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name,self,genre)
    @genres << song.genre
    @songs << song
    song
  end


end

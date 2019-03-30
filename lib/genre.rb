class Genre

  attr_accessor :name, :artists

  @@all = []

  def initialize(name)
    @name = name
    @artists = []
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.genre == self }
  end


end

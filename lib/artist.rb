class Artist

  attr_accessor :artist, :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def find_or_create_by_name

    @songs.each { |song| puts song.name }
  end



end

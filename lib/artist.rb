class Artist

  attr_accessor :name, :songs

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
    #saves new instances of artists to the class variable @@all = []
  end

  def self.all
    @@all
    #returns the collection of artists from the class variable, @@all = []
  end

  def self.find_or_create_by_name(name)
    self.all.find { |artist| artist.name == name } || Artist.new(name)
    #self.all-> take saved artists from the @@all = []
    #find / detect-> iterate through the @@all = []
    #artist.name == name-> when a match is found, add it & return it
    #If a match isn't found, the left-side of the l|OR|r will evaluate to false,
    #the process will continue to the right side thus creating a new artist instance via Artist.new(name)
  end

  def print_songs
    @songs.each { |song| puts song.name }
    #iterates through the instance @songs array  & puts all the songs
  end

end

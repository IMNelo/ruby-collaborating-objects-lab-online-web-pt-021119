class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name  #automatically require a song name for every new instance that's instantiated
  end

  def self.new_by_filename(filename)  #class method
    artist, song = filename.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song.save

  end

end

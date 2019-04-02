class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name  #automatically require a song name for every new instance that's instantiated
  end

  def self.new_by_filename(filename)  #class method
    split_name = filename.split(" - ")
    song = self.new(split_name[0])
    artist = Artist.find_or_create_by_name(split_name[1])
    song.artist = artist
    artist.add_song(song)
    song
  end

end

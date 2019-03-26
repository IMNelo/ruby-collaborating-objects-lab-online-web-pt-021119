class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name  #automatically require a song name for every new instance that's instantiated
  end

  def self.new_by_filename(file_name)
    song_name = file
  end



end

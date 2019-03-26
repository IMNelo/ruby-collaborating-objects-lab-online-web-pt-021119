class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.chdir(@path) do |path|
      Dir.glob("*.mp3") #normalizes the filename to just the mp3 filename with no path
    end
  end

  def import
    self.files.each { |file| Song.new_by_filename(file) }
  end

end

class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.chdir(@path) do | path |
      Dir.glob("*.mp3")
    end
  end
  
  def import
    files.each do |song|
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end
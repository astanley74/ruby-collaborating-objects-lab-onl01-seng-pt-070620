class Song
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(some_filename) 
    artist_name = some_filename.split(" - ")[0] 
    song_name = some_filename.split(" - ")[1] 
    song = Song.new(song_name) 
    artist = Artist.find_or_create_by_name(artist_name) 
    artist.songs << song 
    song 
  end
  
  def artist_name=(name)
  end
end
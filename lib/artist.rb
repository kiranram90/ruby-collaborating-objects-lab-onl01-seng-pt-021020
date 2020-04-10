class Artist 
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    song.artist = self
    @songs << song
  end
  
  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
  
  def self.find_or_create_by_name(name)
    artist = self.all.find { |artist| artist.name == name}
    if artist.nil?
      Artist.new(name)
    else
      artist
    end
  end
end
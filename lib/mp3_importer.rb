class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
    
  end
  
  def import 
    filename = Dir.@path[".mp3"]
    filename.each do {|file| Song.new_by_filename(file)}
  end
  
  def files
  end
  
  
  
end
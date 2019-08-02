class Song
  attr_accessor :name, :artist_name
  @@all = []


  def self.all
    @@all
  end
  
  def save
    self.class.all << self
  end

  def self.create
    song = Song.new 
    song.save
    song
  end
  
  def self.new_by_name(string_name)
    song = self.new 
    song.name = string_name
    song
  end 
  
  def self.create_by_name(string_name)
    song = self.create
    song.name = string_name
    song
  end
  
  def self.find_by_name(song_name)
    self.all.find do |song|
      song.name == song_name
    end
  end
  
  def self.find_or_create_by_name(song_name)
   self.find_by_name(song_name) || self.create_by_name(song_name)
  end
  
  def self.alphabetical
    @@all.sort_by{|x| x.name}
  end
  
  def self.new_from_filename(file_mp3)
    # song = self.new
    # song.name = (file_mp3.split(" - ").chomp(".mp3"))
    # song.artist_name = (file_mp3.split(" - ")[0])
    # self.all << song
    
  end 
end

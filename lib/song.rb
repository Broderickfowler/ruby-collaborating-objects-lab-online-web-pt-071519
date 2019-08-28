class Song

  attr_accessor :artist, :name

@@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

def self.all
  @@all
end


  def self.new_by_filename(file)
    song_info = file.chomp(".mp3").split("-")
    song = s0ong.new)
  end
end

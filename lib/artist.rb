class Artist
attr_accessor :name
@@all = []

def self.all
  @@all
end

def initialize(name)
  @name = name
  @@all << self
  end

def songs
  #song = Song.new(artist)
  Song.all.select do |song|
    song.artist == self
  end
end

def add_song(song)
  song.artist = self
end

def self.find_or_create_by_name(name)
  if artist = self.find(name)
    artist
  else
    self.new(name) #self in this case is the receiver of a new artist.
  end
end

def self.find(name)
  @@all.find{|artist| artist.name == name}
end

def print_songs
  self.songs.each

  end
end

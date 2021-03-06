class Artist
  attr_accessor :name, :songs

  @@all =[]

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
    self
  end

  def self.find_or_create_by_name(name)
    artist = all.detect do |artist|
      artist.name == name
    end
    if artist.nil?
      # create your new artist
      self.new(name).save
    else
      artist
    end
  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end
end

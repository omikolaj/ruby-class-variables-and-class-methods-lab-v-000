class Song
  attr_accessor :name, :genre, :artist


  @@count = 0

  @@genres = []

  @@artists = []

  def initialize(name, artist, genre)
  @@count += 1
  @@genres << genre
  @@artists << artist
  @name = name
  @artist = artist
  @genre = genre
  end

  def self.count
    @@count
  end

  def self.artists
    unique = []
    @@artists.each do |i|
      if(!unique.include?(i))
        unique << i
      end
    end
    unique
  end

  def self.genres
    unique = []
    @@genres.each do |i|
      if(!unique.include?(i))
        unique << i
      end
    end
    unique
  end


  def self.genre_count
    genre_hash = {}
    key = 0
    unique = self.genres
    binding.pry
    @@genres.each do |i|
      if(unique.any?(i))
      genre_hash[i] = key + 1
    end
  end
  genre_hash
end

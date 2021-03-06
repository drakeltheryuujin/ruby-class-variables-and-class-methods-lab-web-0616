class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres ||= []
  @@artists ||= []

  def initialize(name, artist, genre)
    @@count = @@count + 1
    @@artists << artist
    @@genres << genre

    @name, @artist, @genre = name, artist, genre
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.artist_count
    @@artists.each_with_object({}) do |artist, hash|
      hash[artist] ||= 0
      hash[artist] += 1
    end
  end

  def self.genre_count
    @@genres.each_with_object({}) do |genre, hash|
      hash[genre] ||= 0
      hash[genre] += 1
    end
  end
end

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres_list ||= []
  @@artists_list ||= []

  def initialize 
    @@count +=1
    @@artist +=1
  end

  def count
    @@count
  end

  def genres
    self.each |genre| do
      @@genres_list << genre
    end
  end

  def artists
    
  end

  def artist_count
    
  end

  def genre_count

  end
end

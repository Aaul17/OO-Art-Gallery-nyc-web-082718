class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def self.cities
    self.all.map do |gallery|
      gallery.city
    end.uniq
  end

  def my_paintings
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  def artists
    self.my_paintings.map do |painting|
      painting.artist
    end
  end

  def artist_names
    self.artists.map do |artist_obj|
      artist_obj.name
    end
  end

  def combined_years
    years_array = self.artists.map do |artist_obj|
      artist_obj.years_active
    end
    years_array.inject(0) do |sum, x|
      sum + x
    end
  end

end

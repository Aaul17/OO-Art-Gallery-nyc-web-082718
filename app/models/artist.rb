class Artist

  attr_reader :name, :years_active

  @@all = []

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    self.paintings.map do |painting|
      painting.gallery
    end
  end

  def cities
    self.galleries.map do |gallery_obj|
      gallery_obj.city
    end
  end

  def self.average_years
    years_array = self.all.map do |artist|
      artist.years_active
    end
    years_array.inject do |sum, x|
      sum + x
    end.to_f / years_array.size
  end

end

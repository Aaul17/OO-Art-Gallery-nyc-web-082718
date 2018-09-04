require 'pry'
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

a1 = Artist.new("Picasso", 20)
a2 = Artist.new("Rembrandt", 40)
a3 = Artist.new("John Singer Sargent", 15)
g1 = Gallery.new("The Met", "New York")
g2 = Gallery.new("The Louvre", "Paris")
p1 = Painting.new("Guernica", "cubism", a1, g1)
p2 = Painting.new("The Night Watch", "Baroque", a2, g1)
p3 = Painting.new("El Jaleo", "impressionist", a3, g1)
p4 = Painting.new("Street in Venice", "impressionist", a3, g2)



binding.pry

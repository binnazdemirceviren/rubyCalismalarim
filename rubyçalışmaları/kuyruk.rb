pideci = []
pideci.push("Rabia Hanım", "Döne Hanım", "Feyyaz Hanım", "A Bey", "B Bey", "C Hanım", "Rümeysa Hanım", "D Hanım", "E Hanım", "F Hanım")
p pideci
pideci.each do |musteri|
  puts "Pideniz hazır #{ pideci.shift }"
  pideci.push "deneme"
  p pideci
  puts
end
p pideci
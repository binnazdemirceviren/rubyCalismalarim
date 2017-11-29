def ucgen?(a, b, c)
  a + b > c && a + c > b && c + b > a
end

x, y, z = 3, 5, 4
puts "üçgen" + (ucgen?(x, y, z) ? "" : "değil")
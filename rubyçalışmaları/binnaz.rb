#ax**2 + bx + c
puts "a'yı giriniz."
a = gets.chomp.to_i
puts "b'yi giriniz."
b = gets.chomp.to_i
puts "c'yi giriniz."
c = gets.chomp.to_i
delta = (b**2)-(4*a*c)

if ( delta > 0)
 puts "denklemin iki kökü vardır"
 elsif (delta ==0)
 puts "denklemin çift katlı kökü var."
 else
 puts "denklemin kökü yok." 
 end
 
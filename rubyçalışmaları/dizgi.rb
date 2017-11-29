
# Dizgi oluştur
 
dizgi = "merhaba"
 
# Dizgi uzunluğu
puts dizgi.length
 
# Dizginin başı
puts dizgi[0]
puts dizgi[0..2]
 
# Dizginin sonu
puts dizgi[-1]
 
# Dizgide dolaş
dizgi.each_char do |c|
  puts c
end
 
# Dizgiyi büyük/küçük harfe çevir
puts dizgi.upcase
puts dizgi.downcase
 
# Dizgiyi ilk harf büyük yap
puts dizgi.capitalize
 
# Dizgide alt dizgi/karakter sorgula
puts dizgi.include? "ha"
 
# Dizgi başını sorgula
puts dizgi.start_with? "me"
 
# Dizgi sonunu sorgula
puts dizgi.end_with? "ba"
 
# Dizgide alt dizgi/karakter say
puts dizgi.count "a"
 
# Dizgide eşleşen ilk alt dizgi/karakterin indisi
puts dizgi.index "r"
 
# Dizgiye sondan ekleme yap
dizgi = dizgi + " dünya"
dizgi += " dünya"
 
# Dizgiye baştan ekleme yap
dizgi = "dünya " + dizgi
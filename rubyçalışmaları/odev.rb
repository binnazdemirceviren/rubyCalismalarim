#notlar dizinin ilk terimi öğrenci adı ikinci terimi vize notu üçüncü terimi final notu şeklinde alt dizilerden oluşmuştur.
notlar = [
  ['Binnaz', 90, 90], ['Rabia', 0, 100], ['Rumeysa', 50, 60], 
  ['Done', 70, 20], ['Feyza', 60, 90], ['Muhammet', 30, 30], ['ibrahim', 45, 69]
]

gano = 0.0
toplam = 0.0
genel_ort = 0.0
can_toplam = 0.0
can_ort = 0.0
gecenler_yuzde = 0.0
ogrenci_gano_liste = []
gecenler = []
can_liste = []
can_gecen = []
#gano vize notunun yüzde kırkı ile final notunu yüzde altmışı toplanarak bulunur
notlar.each do |puan|
  gano = puan[1] * 0.4 + puan[2] * 0.6
  if puan[2] < 50 && gano < 60
    gecenler.push([puan[0], gano])
  end
  ogrenci_gano_liste << [puan[0], gano] 
end
ogrenci_gano_liste.each do |gano|
  toplam += gano[1]
end
genel_ort = toplam / notlar.size
can_liste = ogrenci_gano_liste.select  {|can| 20 <= can[1] && can[1] <= 80}
can_liste.each do |can|
  can_toplam += can[1]
end
can_ort = can_toplam / can_liste.size

can_gecen = can_liste.select {|can| can[1] < genel_ort }
gecenler = (gecenler + can_gecen).uniq
gecenler_yuzde =  gecenler.size * 100 / notlar.size

gecenler.each do |gecen|
puts "#{gecen[0]} isimli öğrenci #{gecen[1]} not ortalamasıyla geçmiştir"
end
puts gecenler
puts
puts "öğrenci gano liste: #{ogrenci_gano_liste}"
puts "çan listesi: #{can_liste}"
puts
puts "Toplam öğrenci sayısı: #{notlar.size}"
puts "sınıfın genel ortalaması: #{genel_ort}" 
puts "Geçen öğreci sayısı: #{gecenler.size}"
puts "Sınıfınızın can ortalaması: #{can_ort} "
puts "Geçenlerin yüzdesi: #{gecenler_yuzde}"
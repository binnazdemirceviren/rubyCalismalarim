notlar = [
    ['Binnaz', 100, 100], ['Rabia', 0, 100], ['Rumeysa', 50, 60], 
    ['Done', 70, 20], ['Feyza', 60, 90], ['Muhammet', 30, 30]
  ]
ogrenci_gano_liste = []
gano_liste = []
gecen = []
can_liste = []
can_gecen = []
toplam = 0.0
can_toplam = 0.0
print "öğrenci not listesi:"
p notlar
notlar.each do |puan| 
  gano = puan[1] * 0.4 + puan[2] * 0.6
  ogrenci_gano_liste.push([puan[0], gano]) 
  gano_liste.push(gano)
  gecen = notlar.select{|notlar| ([notlar[1] * 0.4 + notlar[2] * 0.4]) >= 60 && notlar[2] >=50}
end
print "Öğrenci gano listesi:"
p ogrenci_gano_liste
gano_liste.each do |puan|
  toplam += puan
end 
genel_ortalama = toplam / ogrenci_gano_liste.size
ogrenci_gano_liste.each do |can|
  if 20 < can[1] && can[1] < 80
    can_liste.push(can)
  end
end
print "çana girenlerin listesi:"
p can_liste
can_liste.each do |puan|
  can_toplam += puan[1]
end
can_ort = can_toplam / can_liste.size
can_liste.each do |foo|
  if foo[1] >= 40 && foo[1] >= genel_ortalama
    gecen.push(foo)
  end
end
gecenler_yuzde =  gecen.size * 100 / notlar.size
print "Geçenlerin listesi #{gecen}"
puts
puts "Toplam öğrenci sayısı: #{notlar.size}"
puts "Geçen öğreci sayısı: #{gecen.size}"
puts "Genel ortalama: #{genel_ortalama} "
puts "Çana girenlerin ortalaması: #{can_ort}"
puts "Geçenlerin yüzdesi: #{gecenler_yuzde}"
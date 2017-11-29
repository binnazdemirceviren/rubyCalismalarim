notlar = [
    ['Binnaz', 80, 75], ['Rabia', 70, 60], ['Rumeysa', 80, 50], 
    ['Done', 60, 50], ['Feyza', 75, 60], ['Muhammet', 60, 40]
  ]
ogrenci_gano_liste = []
gano_liste = []
can_liste = []
can_gecen = []
toplam = 0
can_toplam = 0
notlar.each do |puan| 
  gano = puan[1] * 0.4 + puan[2] * 0.6
  ogrenci_gano_liste.push([puan[0], gano]) 
  gano_liste.push(gano)
end
print ogrenci_gano_liste
gano_liste.each do |puan|
  toplam += puan
end
genel_ortalama = toplam / ogrenci_gano_liste.size
puts
print "genel ortalama:"
puts genel_ortalama
ogrenci_gano_liste.each do |can|
  if 20 < can[1] && can[1] < 80
    can_liste.push(can)
  end
end
print "çana girenlerin listesi:"
print can_liste
can_liste.each do |puan|
  can_toplam += puan[1]
end
can_ort = can_toplam / can_liste.size
puts 
print "çan ortalama:"
puts can_ort
notlar.each do |bar|
   if bar[2] >= 50
    can_liste.each do |foo|
      if foo[1] >= 40
        can_gecen.push(foo)
      end    
    end
  end   
end
print "candan gecenler"
print can_gecen
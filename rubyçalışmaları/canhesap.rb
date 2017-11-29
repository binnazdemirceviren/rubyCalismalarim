notlar = [["ibrahim", 50, 5], ["hasan", 81, 49], ["yunus emre", 65, 38], ["edanur", 0, 100], ["ebrar", 24, 60], ["ahmetcan", 88, 70], ["engincan", 40, 45], ["binnaz",70,90], ["ismail", 50, 60]]
=begin
vize_notu = []
notlar.each do |vize|
    vize_notu.push [ vize[0], vize[1] ]
end

final_notu = []
notlar.each do |final|
    final_notu.push [ final[0], final[2] ]
end
=end
not_ortalama = []
notlar.each do |not_ort|
    not_ortalama.push [ not_ort[0], not_ort[1] * 0.4 + not_ort[2] * 0.6, not_ort[2] ]
end

gano_toplam = 0.0

not_ortalama.each do |agr_not|
    gano_toplam += agr_not[1]
end

genel_agirlikli_not_ortalama = 0.0
genel_agirlikli_not_ortalama = gano_toplam / notlar.size
=begin
basarili_sayilan_ogrenciler = []
basarili_sayilan_ogrenciler = final_notu.select { |basari| basari[1] >= 50 }
=end
can_toplam = 0.0

cana_girenler = []
cana_girenler = not_ortalama.select { |notlar| notlar[1] <= 80 && notlar[1] >= 20 }
puts cana_girenler.__id__
cana_girenler.each do |can|
    can_toplam += can[1]
end

can_ortalama = 0.0
can_ortalama = can_toplam / cana_girenler.size

dogrudan_gecenler = []
dogrudan_gecenler = not_ortalama.select { |dogrudan| dogrudan[2] >= 50 && dogrudan[1] >= 60}
puts dogrudan_gecenler.__id__
candan_gecenler = []
candan_gecenler = not_ortalama.select { |sinif| sinif[2] >= 50 && sinif[1] >= 40 && sinif[1] >= genel_agirlikli_not_ortalama }
puts candan_gecenler.__id__
candan_gecenler.each do |can|
    can.pop
end

gecenler = (dogrudan_gecenler + candan_gecenler).uniq

gecenlerin_yuzdesi = gecenler.size * 100 / notlar.size
gecenler.each do |gecen|        
  puts "#{gecen[0]} isimli öğrenci #{gecen[1]} not ortalamasıyla dersi geçmiştir. "
end

puts "Toplam öğrenci sayısı: #{notlar.size}"
puts "Geçen öğrenci sayısı : #{gecenler.size}"
puts "Genel sınıf ortalaması: #{genel_agirlikli_not_ortalama}"
puts "Çana girenlerin ortalaması: #{can_ortalama}"
puts "Geçenlerin yüzdesi: #{gecenlerin_yuzdesi}"

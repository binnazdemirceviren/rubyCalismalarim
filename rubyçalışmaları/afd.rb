print "baslangic degeri girin "
baslangicDegeri = gets.chomp.to_i
print "bitis degeri giriniz: "
bitisDegeri = gets.chomp.to_i + 1

dizi = []
(baslangicDegeri...bitisDegeri).each{|e| dizi << e}
print dizi

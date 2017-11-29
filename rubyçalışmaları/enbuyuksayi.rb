sayilar = [1, 2, 4, 45, 6, 7, 12]
en_buyuk = sayilar.first

def sayi(sayilar)
  i = 1
  biggest = sayilar.first
  while i < sayilar.size
    if sayilar[i] > biggest 
      biggest = sayilar[i]
    end
    i += 1
  end
  biggest
end
p sayi(sayilar)
=begin
while i < sayilar.size
  puts "en büyük sayı:  #{(sayi?(sayilar)?"en_buyuk:sayilar.first)}"
end
=end

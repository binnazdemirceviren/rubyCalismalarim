# sayi1 = 1
sayilar = [ 35 , 40 , 56 ,4 ,2 , 8 , 1, -5, -18 ]

en_buyuk = sayilar[0]
en_kucuk = sayilar[0]

sayilar.each do |serhat|
  if serhat > en_buyuk
    en_buyuk = serhat
  end

  if serhat < en_kucuk
    en_kucuk = serhat
  end
end

puts "En büyük sayı: #{en_buyuk}"
puts "En kucuk sayı: #{en_kucuk}"

sayi = (1..100)
sayilar = []
asal_sayilar = []
tam_sayi =[]
sayi.each do |deger|
  sayilar.push(deger)
end

sayilar.each do |bolunen|
  (1..100).each do |bolen|
    if bolunen > bolen && bolunen % bolen == 0
      tam_sayi.push(bolunen)
    elsif bolunen > bolen && bolunen % bolen == 0
      asal_sayilar.push(bolunen)

    end
  end
end
p asal_sayilar
p tam_sayi

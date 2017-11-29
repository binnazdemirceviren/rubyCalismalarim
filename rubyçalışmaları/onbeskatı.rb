sayilar = []
onbes_katlari= []
(1..1000).each do |a|
  sayilar << a
end 
sayilar.each do |a|
    if a%5==0 && a%3==0 
        onbes_katlari << a
    end 
end
toplam = 0
onbes_katlari.each do |a|
  toplam += a
end
p toplam

dizi =[1,1]
while dizi[-1] + dizi[-2] < 4000000
    dizi << dizi[-1] +dizi[-2]
end
dizi = dizi.select{|a| a.even?}
toplam=0
dizi.each do |a|
  toplam+=a
end
p toplam
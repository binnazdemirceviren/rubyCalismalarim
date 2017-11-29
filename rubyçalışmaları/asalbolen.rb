sayi =(1..600851)
sayilar =[]
(1..600851).each do |a|
  sayilar << a
end

asal = []
sayilar.each do |bolunen|
    i = 1
    sayac = 0  
    while i <= bolunen
        if bolunen % i == 0
            sayac += 1
        end
        i += 1
    end
    if sayac == 2
        asal << bolunen
    end
end
tam_bolen =[]
asal.each do |a|
    if 600851 % a == 0
        tam_bolen << a 
    end
end
p tam_bolen[-1]


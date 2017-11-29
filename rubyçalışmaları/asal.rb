str = Time.new
sayi =(1..100000)
sayilar =[]
sayi.each do |a|
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
p asal.size
finish = Time.new
puts "geçen süre #{finish -str}"
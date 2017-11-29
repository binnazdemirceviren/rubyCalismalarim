str = Time.new
sayi = (1..100000)
sayilar = []
sayi.each do |c|
  sayilar << c
end

(2..100000).each do |a|
  sayilar.each do |b|
    if b > a && b % a == 0 && a != b
      sayilar.delete(b) 
    end
  end   
end
#p sayilar
p "sayisi: #{sayilar.size}"

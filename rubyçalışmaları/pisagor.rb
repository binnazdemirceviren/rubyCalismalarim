aralik = (1..1000)

aralik.each do |c|
    aralik.each do |b|
      aralik.each do |a|
        puts "a:#{a} b:#{b} c:#{c}" if (a**2 + b**2) == c**2 && a < b && b < c && a+b+c==1000
      end
    end
end
 
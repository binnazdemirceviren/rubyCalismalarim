#!/usr/bin/env ruby
 
hedef = Dir.pwd
desen = '*.*'
 
dosyalar = Dir[File.join(hedef, desen)]
 
bilgiler = dosyalar.map do |d|
  {
    uzanti: File.extname(d),
    dizin: File.dirname(d),
    isim: File.basename(d),
  }
end
 
# puts "Dosyalar"
# puts "--------------------------------"
#
# p dosyalar

# puts "Bilgiler"
# puts "--------------------------------"
# p bilgiler
#
# exit

istatistik = {}
 
bilgiler.each do |b|
  dil =
    case b[:uzanti]
    when '.rb'
      :ruby
    when '.py'
      :python
    else
      :bilinmeyen
    end
  istatistik[dil] ||= 0
  istatistik[dil] += 1
end
 
p istatistik

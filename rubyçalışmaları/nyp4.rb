#!/usr/bin/ruby
def bilgi dizi
	kelime_bilgi =[]
	dizi.each do |e| 
		kelime_bilgi[e.to_sym] = e.length
	end
	kelime_bilgi
end
cumle = "Ruby programlama diline hakim olmanın yolu sta"
cumle = cumle.split
puts bilgi cumle

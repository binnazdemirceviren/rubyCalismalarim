class Bolum
	attr_reader :isim
	def initialize(isim)
		@isim = isim
		@kisiler = []
	end
	def kisi_ekle(tam_isim)
		ad, soyad = tam_isim.split
		@kisiler << Kisi.new(ad, soyad)
	end
	def kisi_bul(ad)
		@kisiler.select do |kisi|
		kisi.ad == ad
		end
	end
end

class Kisi
	attr_reader :ad, :soyad	
	def initialize(ad, soyad)
		@ad = ad
		@soyad = soyad
	end
end


bolum = Bolum.new "Bilgisayar Mühendisliği"
bolum.kisi_ekle "Ahmet Mert"
bolum.kisi_ekle "Nuray Yılmaz"		
bolum.kisi_ekle "Ahmet Kuvvet"

bolum.kisi_bul("Ahmet").each do |kisi|
	puts kisi.soyad
end	

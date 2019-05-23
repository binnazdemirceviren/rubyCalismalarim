class Araba 
	attr_reader :marka
	attr_writer :fiyat

	def initialize(marka)
		@marka = marka
	end
	
	def to_s
		"#{@marka}: #{@fiyat}"	
	end
end		
	a = Araba.new('opel')
	a.fiyat = 35000
	b = Araba.new('astra')
	b.fiyat = 25000
	puts a
	puts b
	c = a+b
	puts c

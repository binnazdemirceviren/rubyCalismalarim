#!/usr/bin/ruby

class Foo
	attr_accessor :a
	def initialize(a)
		@a = a
	end

	def bar
		self.a += 3
	end
end

class Bar < Foo
	def bar
		super
		a+5
	end
end

b = Bar.new 7   ### b değişkenine 7 değeri atanır.

puts b.bar + b.a ### bar fonksiyonu miraslandığı için önce Foo clasındaki fonksiyona girer 10 olur

## sonrasında a+5 ile son değer 15 olur. b.a aslında self.a'nın kendisi olduğu için ilk b değeri a+3 ile 10 yapılır toplam 25 olur


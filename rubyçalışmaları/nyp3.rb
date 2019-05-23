#!/usr/bin/ruby

module FooBar
	def baz
		puts qux "foobarbaz"
	end

	def qux corge
		corge
	end

	def corge
		puts "foobar"
	end
end

class Quux
	include FooBar ### moduller kütüphane gibidir demiştik. FooBar modulü import edildi. Artık FooBar'daki fonksiyonları kullanabiliriz.
end

p Quux.new.baz  ##### Quux class'ından nesne üretirken gidip EKLEDİĞİMİZ(include) FooBar modulünden nesne çağırıyoruz. Baz fonksiyonu da FooBar modülündeki baz olduğu için ekrana foobarbaz yazılır.

p Quux.baz ### Quux class'ında bir fonksiyon olmadığı için nesne FooBar'dan üretilmeye çalışır. AMA MODÜLLER NESNE OLUŞTURAMAZ

#!/usr/bin/ruby

class Foo 
	@@total=10
	
	def baz
		@@total
	end
end

m = Foo.new

puts m.baz

class Bar < Foo
	@@total=20
end

f = Foo.new
b = Bar.new

puts f.baz 
puts  b.baz


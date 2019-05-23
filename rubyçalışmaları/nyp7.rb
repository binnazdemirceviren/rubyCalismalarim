#!/usr/bin/ruby

class Foo
	def initialize(v)
		@val = v
	end

	def set(v)
		@val=v

	end

	def get
		@val
	end
end

a = Foo.new(10)
b = Foo.new(20)

print a.get, " " , b.get;
b.set(30)
print a.get, " ", b.get;

#!/usr/bin/ruby

module Bar
	@a = 20
	def self.foo
		@a += 2
	end

	def self.bar(b)
		foo
		@a +=b
	end
end

b = Bar.new 19

puts b.bar 3


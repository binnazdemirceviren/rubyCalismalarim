#!/usr/bin/ruby

module Bar
	@a = 13
	def self.foo
		@a += 1
	end

	def self.bar(b)
		foo
		@a += b
	end
end

b = Bar.new 19  ### MODULE'DEN NESNE ÜRETİLEMEZ!!!!!!!!!
puts b.bar 3

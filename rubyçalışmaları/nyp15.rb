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

b = Bar.bar 19
#puts b.bar 3
puts b		
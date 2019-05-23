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

puts Bar.bar 3
		
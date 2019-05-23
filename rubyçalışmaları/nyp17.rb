class A 
	attr_reader :a
	@a = 19
	def intiliaze
		@a = 13
	end
	def to_s
		"#{@a}"
	end	
end

puts A.new	

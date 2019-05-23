class Cember
	attr_accessor :yaricap
	attr_reader :alan
	def initialize r,a 
		@yaricap = r
		@alan = a
	end
	
	def to_s
		 "#{@yaricap} #{@alan}yarıcaplı çember"
	end
end

	c1 = Cember.new 5,8
	c2 = Cember.new 6,9
	c3 = c1 + "+" + c2
	puts c1
	puts c2
    puts c3

module A
	def ok
		puts "A ok"
	end
end

class B
	def ok
		puts "B ok"
	end
	include A
end

B.new.ok				
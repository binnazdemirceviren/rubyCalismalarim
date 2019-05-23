class Box
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end
   # instance method
   def getArea
      @area = @width / @height
      "Big box is #@area"
   end
end

class BigBox < Box
	def getArea
	end	
end
box = BigBox.new(20, 10)
p box.getArea()

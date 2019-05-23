class Foo

   def initialize(bar)

       @bar=bar

    end

    def bar=(bar) #attr_accessor yerine geçen bir kullanımdır.

        @bar=bar

    end

    def bar

        @bar

    end

end

baz = Foo.new "Ruby"

baz.bar = "Java"

puts baz.bar
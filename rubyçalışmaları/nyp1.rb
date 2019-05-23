#!/usr/bin/ruby

foobar = Array.new
def foobar.first
	"Hello World!".size
end

p a = foobar.first
foobar = Array.new
p b = foobar.first


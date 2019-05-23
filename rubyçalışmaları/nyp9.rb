#!/usr/bin/ruby

kelime = "burubysuper"
frekans = {}
kelime.split("").each do |e|
	frekans[e] = 0 unless frekans[e]
	frekans[e] += 1
end
p frekans["r"]

p frekans.keys.last

p frekans[frekans.keys]

p frekans[frekans.keys.last]

p frekans[frekans.keys.last] + frekans["r"]

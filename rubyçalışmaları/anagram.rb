kelimeler = %w[
    demo none tied evil
    dome mode live viel
    edit tide flow neon 
]
sirali_kelime = []
anagram = []
kelimeler.each do |kelime|
    sirali_kelime << kelime.split
end
 
=begin
sirali_kelime[0] = foo
sirali_kelime.each do |harfler|
    if harfler == foo
        anagram << harfler
    end
end
p anagram
=end




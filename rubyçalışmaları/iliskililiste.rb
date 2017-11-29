#HASH

rehber = {
    'annem' => "05051234567"
    'babam' => "05331234567"
    'kanka' => "05411234567"
}

#oku
puts rehber['babam'] #"05331234567"
#yaz
rehber['abim'] => "05321234567"
rehber['kanka'] => "05301234567"

#methodlar
p rehber.keys
p rehber.values

p rehber.key? 'abim'  #=> true
p rehber['olmayan'] #=> nil
rehber['olan'] = nil
p rehber['olan'] #=> nil
p rehber['olan'] #true

#dolaş
rehber.each do |key, value|
    puts "#{key}: #{value}"
end
rehber.each do|isim, numara|
    puts"#{isim}: #{numara}"
end
#dolaşırken değiştir

rehber.each_key do |isim|
    rehber[isim] += '9'
end

#alıştırma tekil meyveler 


meyveler = %w(
    elma armut Elma kiraz şeftali karpuz kavun şeftali ARMUT
)

pazar ={}
meyveler.each do |meyve|
   pazar[meyve.downcase] = true
end
p pazar.keys

#alıştırmaÇ kelime frekansı
metin = <<MSG
Nush ile uslanmayanın etmeli tektir; tektir ile uslanmayanın  hakkı kötektir
MSG

frekans = {}
metin.split.each do |kelime|
    kelime.delete! ';.,'
    kelime.downcase! 
    frekans[kelime] = 0  unless frekans[kelime]
    frekans[kelime] += 1

p frekans







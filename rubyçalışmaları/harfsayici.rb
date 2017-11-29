def histogram(metin)
  veri = { }
  metin.each_char do |c| 
    if veri[c] 
        veri[c] +=1
    else 
        veri[c] = 1
    end
    =begin
     veri[c]  ||= 0
     veri[c]  +=1
    end
  end
  veri 
end
puts histogram("bugün bayram")

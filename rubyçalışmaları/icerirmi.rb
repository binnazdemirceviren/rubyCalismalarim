def icerirmi?(katar, karakter)
    i = 0
    while i < katar.length 
        if katar[i] == karakter
            sonuc = "var"
            break
        else
            sonuc = "yok"
        end
        i +=1
    end
    sonuc
end
puts icerirmi?("elma", "x")
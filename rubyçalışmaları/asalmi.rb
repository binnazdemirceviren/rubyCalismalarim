def asalmi?(sayi)
    i = 1 
    sayac = 0
    sonuc = ""
    while i <= sayi
        if sayi % i == 0
            sayac += 1

        end
        i += 1 
    end
    if sayac == 2
        sonuc = "asal"
    else 
        sonuc = "asal degil"
    end
end

puts asalmi? 96739
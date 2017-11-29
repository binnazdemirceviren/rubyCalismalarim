toplam = 0 
 print ("\n Program çalışıyor")
x = 2000000

def asalmi (sayi)
    for i in range(2,sayi,1)
        if sayi%i ==0
            return false
        end
        return true
    end
end
for i in range(2,x,1)
    if asalmi(i)
        toplam+=1
    end
end

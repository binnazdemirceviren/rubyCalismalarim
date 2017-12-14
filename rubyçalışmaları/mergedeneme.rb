$icilen_caylar = {binnaz: :sekersiz,
                 feyza: :sekersiz,
                 rumeysa: :sekerli,
                 done: :sekerli}
            
def musteri(siniftakiler = {}, yasamdakiler = {})
    siparis = $icilen_caylar.merge siniftakiler
    toplam_siparis = siparis.merge yasamdakiler
    p siparis
    p toplam_siparis
end 
musteri({serhat_celil: :sekerli}, {mert: :sekersiz})

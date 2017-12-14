kullanici=File.read(login.txt)
giris={}
kullanici.each do |nick, sifre|
    giris[nick] = sifre
end
kelime=File.read("kelimeler.txt")
turkce={}
ingilizce={}
sozluk=kelime.split("\n").map{|x| x.split(',')}
sozluk.each do |ing, tur|
    ingilizce[ing]=tur
    turkce[tur]=ing
end
puts "Sisteme Hoşgeldiniz.
Sistemi kullanmak için gerekli komutlar aşağıda listelenmiştir.
Giriş yapmak için komut -> Login
İngilizce'den Türkçe'ye kelimeler için -> EngTr
Türkçe'den İngilizce'ye kelimeler için -> TrEng
Çıkmak için komut -> Exit"
giris = nil
while true
    print "Komut giriniz:"
    komut=gets.chomp
    if komut=="Login"
        giris = 1
        break 
    else
        giris  = 0
    end
    print:"Lütfen giriş komutu giriniz"
end
while true
    puts "kullanıcı adınızı giriniz" 
    print "kullanıcı adı: "
    kullanici_adi = gets.chomp
    puts "şifrenizi giriniz."
    print "şifreniz: "
    sifre = gets.chomp
    kullanici.each do |x|
        if x[0] == kullanici_adi && x[1] == sifre
            sayac=1
            puts "sisteme giriş yaptınız."
            while true
                puts "girmek istediğiniz sözlüğün komutunu giriniz."
                komut2 = gets.chomp 
                break if komut2=="Exit" 
                if komut2  == "TrEng"
                puts "türkçe ingilizce sözlüğe giriş yaptınız"
                print "aradığınız kelimeyi giriniz:"
                kelime= gets.chomp
                if turkce[kelime] 
                    puts turkce[kelime]
                else 
                    puts "aradığınız kelime bulunmamakta."
                end
            if komut2 == "EngTr"
                puts "ingilizce türkçe sözlüğe girdiniz"
                print "aradığınız kelimeyi giriniz:"
                kelime = gets.chomp
                    if ingilizce[kelime]
                        puts ingilizce[kelime] 
                    else 
                        puts 
                            "aradığınız kelime bulunmamakta"
                    end
            else
                puts "yanlış komut girdiniz"
            end
        end
        
    end
end

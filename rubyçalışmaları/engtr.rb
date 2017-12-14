

puts "Sisteme hoşgeldiniz."
puts "sistemi kullanmak için gerekli komutlar aşağıda listelenmiştir."
puts "giriş yapmak için -> login"
puts "İngilizceden Türkçeye kelimeler için -> EngTr"
puts "Türkçeden İngilizceye kelimeler için -> TrEng"
puts "Çıkmak için -> Exit"
print "Komut giriniz:"
kullanici = { :foo => '12345',
              :bar => 'abcd',
              :ceng => '1905',
              :omu => '55',
              :su => 'h2o'
}
komut1 = gets.chomp
ing_tr = File.read("eng_tur_words.txt")
sozluk =ing_tr.split("\n").map {|x| x.split(',')}
tur = {}
eng = {}
sozluk.each do |ing , tr|
    ing = ing.to_sym
    tr = tr.to_sym
    eng[ing] = tr
    tur[tr] = ing 
end   
while true
if komut1 == "Login"
  puts "Sisteme giriş yaptınız"
  print "Kullanıcı adınızı giriniz:"
  kullanici_adi = gets.chomp
  kullanici_adi = kullanici_adi.to_sym
  print "Şifrenizi giriniz:"
  sifre = gets.chomp
    if kullanici[kullanici_adi] && kullanici[kullanici_adi] == sifre
      puts "Hoşgeldiniz #{kullanici_adi}"
      while true
      puts "Lütfen girmek istediğiniz komutunu giriniz."
      komut2 = gets.chomp
      break if komut2 == "Exit"
      if komut2 == "TrEng"
        puts "Türkçe->İngilizce sözlüğe giriş yaptınız."
        puts "Aradığınız kelimeyi giriniz."
        puts "Kelime:"
        kelime = gets.chomp
        kelime = kelime.to_sym
         if tur[kelime]
            puts "Aradığınız kelimenin ingilizcesi #{tur[kelime]}"              
          else
            puts "Aradığınız kelime bulunmamakta"
          end
      elsif komut2 == "EngTr"
          puts "İngilizce->Türkçe sözlüğe giriş yaptınız."
          puts "Aradığınız kelimeyi giriniz"
          puts "Kelime:"
          kelime = gets.chomp
          kelime = kelime.to_sym
            if eng[kelime]
              puts"Aradığınız kelimenin türkçesi:  #{eng[kelime]}"
            else
              puts "Aradığınız kelime bulunmamakta"
            end
      end 
    end
    else
        puts "Kullanıcı adınız veya şifreniz hatalı"
    end
  
else
  puts "Sisteme giriş yapamadınız"
end
end
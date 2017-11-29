#aile ağacı
anne = {isim: "Ayse"}
baba = {isim: "mehmet"}
kiz_cocuk = {isim: "ömeriye"}
erkek_cocuk = {isim: "feyyaz"}

anne[:es] = baba
anne[:kiz_cocuk] = kiz_cocuk
anne[:erkek_cocuk] = erkek_cocuk

baba[:es] = anne
baba[:kiz_cocuk] = baba[:es][:kız_cocuk]
baba[:erkek_cocuk] = erkek_cocuk

kiz_cocuk[:anne] = anne
kiz_cocuk[:baba] = anne[:es]
kiz_cocuk[:kardes] =anne[:erkek_cocuk]

erkek_cocuk[:anne] = kiz_cocuk[:anne]
erkek_cocuk[:baba] =erkek_cocuk[:anne][:es]
erkek_cocuk[:kardes] = kiz_cocuk

#isim değiştirme
anne[:isim] = "fatma"
puts anne[:es][:kiz_cocuk][:isim]



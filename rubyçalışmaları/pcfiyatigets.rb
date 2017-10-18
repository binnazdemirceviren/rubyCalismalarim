İSLEMCİ_CEKİRDEK_UCRETİ = 150
RAM_GB_UCRETİ = 150
GPU_GB_UCRETİ = 125
ERKAN_BOYUTU_UCRETİ = 40

#Birim fiyatlarıdır. 
WİNDOWS_LİSANS_UCRETİ = 200

puts "Bilgisayar kaç çekirdekli olsun? "
i_c_sayısı = gets.chomp.to_i
puts "Bilgisayarınızın RAM'i kaç GB olsun? "
ram_gb_miktari = gets.chomp.to_i
puts "Bilgisayarınızın GPU RAM'i kaç gb olsun? "
gpu_gb_miktari = gets.chomp.to_i
puts "Bilgisayarınızın ekran boyutu kaç inch olsun? "
ekran_boyutu = gets.chomp.to_i

puts "bilgisayarı almak için bir birikiminiz var mı? "
birikimi = gets.chomp.to_i
puts "Aylık maaşınız ne kadar? "
maasiniz = gets.chomp.to_i
puts "Aylık gideriniz ne kadar? "
gider = gets.chomp.to_i

windows = true
salt_pc_fiyati = (i_c_sayısı * İSLEMCİ_CEKİRDEK_UCRETİ) + (RAM_GB_UCRETİ * ram_gb_miktari) + (GPU_GB_UCRETİ * gpu_gb_miktari) + (ERKAN_BOYUTU_UCRETİ * ekran_boyutu) + WİNDOWS_LİSANS_UCRETİ
vergi = salt_pc_fiyati / 4
pc_fiyati = salt_pc_fiyati + vergi

puts "istediğiniz bilgisayarın fiyatı: #{pc_fiyati}"

#aldığınız bilgisayarın fiyatı 4500 lirayı geçiyorsa ürününüze %10 indirim uygulanır.
if pc_fiyati >= 4500
    pc_fiyati = pc_fiyati*0.9 
    puts pc_fiyati
end
   
if windows
    puts "istediğiniz bilgisayar windows işletim sistemi."
end

if maasiniz - gider + birikimi > salt_pc_fiyati
    puts "bilgisayarı almaya maaşınız yetiyor."
else
    puts "üzgünüz bu bilgisayar sizin maaşınıza uygun değil"
end

if
ay = (pc_fiyati - birikimi) / (maasiniz - gider) 
puts "bilgisayarı #{ay.ceil} ay birikiminizden sonra alabilirsiniz."

#alt değere yuvarlamak istiyorsak .floor üst değere yuvarlamak istiyorsak .ceil diyoruz.
end
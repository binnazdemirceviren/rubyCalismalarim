İSLEMCİ_CEKİRDEK_UCRETİ = 150
RAM_GB_UCRETİ = 150
GPU_GB_UCRETİ = 125
ERKAN_BOYUTU_UCRETİ = 40

#Birim fiyatlarıdır. 
WİNDOWS_LİSANS_UCRETİ = 200


i_c_sayısı = 8
ram_gb_miktari = 8
gpu_gb_miktari = 6
ekran_boyutu = 10

birikimi = 2000
maasiniz = 2500
gider = 1500.0

windows = true
salt_pc_fiyati = (i_c_sayısı * İSLEMCİ_CEKİRDEK_UCRETİ) + (RAM_GB_UCRETİ * ram_gb_miktari) + (GPU_GB_UCRETİ * gpu_gb_miktari) + (ERKAN_BOYUTU_UCRETİ * ekran_boyutu) + WİNDOWS_LİSANS_UCRETİ
vergi = salt_pc_fiyati / 4
pc_fiyati = salt_pc_fiyati + vergi

puts pc_fiyati

#aldığınız bilgisayarın fiyatı 4500 lirayı geçiyorsa ürününüze %10 indirim uygulanır.
if pc_fiyati >= 4500
    pc_fiyati = pc_fiyati*0.9 
    puts pc_fiyati
end
   
if windows
    puts "istediğiniz bilgisayar windows işletim sistemi."
end

para_yetersizligi = false
if maasiniz - gider + birikimi > salt_pc_fiyati
    para_yetersizligi = false
    puts "bilgisayarı almaya maaşınız yetiyor."
else
    para_yetersizligi = true
    puts "üzgünüz bu bilgisayar sizin maaşınıza uygun değil"
end

if para_yetersizligi
ay = (pc_fiyati - birikimi) / (maasiniz - gider) 
puts "bilgisayarı #{ay.ceil} ay birikiminizden sonra alabilirsiniz."

#alt değere yuvarlamak istiyorsak .floor üst değere yuvarlamak istiyorsak .ceil diyoruz.
end
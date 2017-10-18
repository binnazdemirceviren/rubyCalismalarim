paralar = [[10, "31567566"], [10, "687447"], [20, "Nil Karaibrahimgil"], [50, "5655464"], [100, "5jsjdf6784"], [5, "sjsjs"], [10, "George Büchner"], [5, "Tarkan Tevetoğlu"]]
sahte_paralar = []

paralar.each do |para|
  if para.last == "Nil Karaibrahimgil" || para.last == "George Büchner"
    sahte_paralar << para
    print para
    puts " paranız sahtedir."
  else
    print para
    puts "paranız sahte değildir."
  end
end

puts "Sahte paralarınız #{sahte_paralar}"
toplam = 0

sahte_paralar.each do |sahteler|
  toplam = toplam + sahteler.first
end 

puts toplam

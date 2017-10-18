foo = 3
bar = 6
que = 9
degiskenler = [foo , bar , que]
en_buyuk = foo

degiskenler.each do |a|
  if a >= en_buyuk 
     en_buyuk = a
  end
end
puts "en büyük sayınız #{en_buyuk}"
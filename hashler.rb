# Hash
dersler = {mat:"80", turkce:"90", ingilizce:"70"}

p dersler
p dersler[:ingilizce]

# Hashlerde Denklik Kontrolü
ogrenci1 = {mat:"80", turkce:"90", ingilizce:"70"}
ogrenci2 = {turkce:"90", mat:"80", ingilizce:"70"}

p ogrenci1 == ogrenci2
p ogrenci1.eql?(ogrenci2)

# Hash Yapılarında Fetch İfadesi
puts "-----------------------------------"
a = {renk:"mavi", sekil:"kare"}
puts "Ürünün hangi bilgisine ulaşmak istersiniz?"
istek = gets.chomp

p a.fetch(:"#{istek}", "Ürün hakkında bu bilgiye ulaşılamıyor.") #Hata verecek durumda kendi ifademizi iletiriz.

# Hash İçerisine Değer Atama
puts "-----------------------------------"
print "Ürün hakkında eklemek istediğiniz bilgi başlığı:"
anahtar = gets.chomp
print "Eklenecek ürün bilgisi başlığının değeri:"
deger = gets.chomp

a.store(:"#{anahtar}", "#{deger}")
p a
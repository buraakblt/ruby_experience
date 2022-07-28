# Dizilerde Include ve Member Metodları

a = ["Ali", "Veli", "Mehmet", "Ahmet"]

p a.include?("Veli")
p a.include?("Burak")

p a.member?("Veli")
p a.member?("Burak")

puts "--------------------"

# Dizilerde *INT *STR Kullanımı

b = ["Ali", "Veli"]

p b * 3
p b * "-ruby-"

# İki Diziyi Birleştirme
puts "--------------------"

c = a + b
p c

# Diziler arası çıkarım
puts "--------------------"

dizi1 = ["ali", "veli", "ahmet"]
dizi2 = ["ali", "veli", "ahmet", "mehmet"]

dizi3 = dizi2 - dizi1
p dizi3

# İki diziyi tekrarsız birleştirme
puts "--------------------"

dizi4 = dizi1 | dizi2
p dizi4

# Dizi sonuna yeni dizi ekleme
puts "--------------------"

x = [10, 20, 30]
y = [40, 50, 60]

p x.concat(y)
p x.concat([100, 200])

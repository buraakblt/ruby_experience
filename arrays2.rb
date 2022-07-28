# Dizilerde for ve each ifalaeri kullanımları

dizi = ["Ali", "Veli", "Ayşe", "Fatma"]

dizi.each do |index|
    p index
end

puts "----------------------"

for index in dizi
    p index
end

# Length ve Count İfadeleri

a = dizi.length
b = dizi.count

puts "----------------------"

p a 
p b  

# Dizilerde Reverse ve Sort İfadeleri

dizi2 = ["PHP", "ASP", "PYTHON", "RUBY"]

puts "----------------------"

p dizi2.reverse # Diziyi tersine çevirir.
p dizi2.sort    # Diziyi alfabetik sıralar.

dizi3 = dizi2.reverse
dizi4 = dizi2.sort
p dizi3
p dizi4

# Dizilerde First ve Last İfadeleri

c = Array(1..10)

puts "----------------------"

p c.first
p c.first(2)
p c.last 
p c.last(2)

# if, elsif, else kullanımı
puts "Program Girişi"
print "Bir sayı giriniz:"
sayi = gets.chomp.to_i 

if sayi <= 5
    puts "Girdiğiniz sayı 5'ten küçüktür ya da 5'e eşittir."
elsif sayi < 10
    puts "Girdiğiniz sayı 5-10 arasındadır."
elsif sayi <= 20
    puts "Girdiğiniz sayı 20'ye eşit ya da 20'den küçüktür."
else
    puts "Girdiğiniz sayı 20'den büyüktür."
end

# unless kullanımı
print "Lütfen yaşınızı giriniz:"
yas = gets.to_i

unless yas >= 18
    puts "Henüz reşit değilsiniz!"
else
    puts "Reşitsiniz."
end




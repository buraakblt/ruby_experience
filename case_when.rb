# Case ve When kullanımı
=begin   
print "[1] Hastane\n[2] İtfaiye\n[3] Polis\n[4] Bakanlıklar\n
İletişime geçmek istediğiniz kuruluşu tuşlayınız:"
sec = gets.to_i

case sec
when 1
    puts "Hastane iletişim hattına yönlendiriliyorsunuz..."
when 2
    puts "İtfaiye iletişim hattına yönlendiriliyorsunuz..."
when 3
    puts "Polis iletişim hattına yönlendiriliyorsunuz..."
when 4
    puts "Bakanlık iletişim hattına yönlendiriliyorsunuz..."
else
    puts "Geçersiz tuşlama yaptınız!"
end
=end

#Farklı Case When Kullanım Örneği
cumle = "Merhaba benim adım burak"

case cumle
when /burak/
    p "Girdiğiniz cümle içinde 'Burak' ismi geçiyor."
else
    p "Girdiğiniz cümle içerisinde 'Burak' ismi geçmiyor."
end

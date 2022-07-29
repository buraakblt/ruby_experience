# Fonksiyonlara anahtar değer tanımlama

def ogrenci_bilgileri ad = "Tanımsız", yas = 18, number = "bilinmiyor"
    return puts "Öğrenci adı: #{ad} \n"+
    "Yaş: #{yas} \n"+
    "Numara: #{number}"
end

print "Öğrencinin adını giriniz: "
ad =gets.chomp

print "Öğrencinin yaşını giriniz: "
yas = gets.to_i

print "Öğrenci numarasını giriniz: "
number = gets.chomp

ogrenci_bilgileri ad, yas, number
ogrenci_bilgileri 
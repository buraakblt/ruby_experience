# Fonksiyonlarda Varsayılan Değer Tanımlama

def ussel_sayi (sayi1 = 10, sayi2 = 2)
    a = sayi1 ** sayi2
    p "#{sayi1} üzeri #{sayi2} sonucu: #{a}"
end

print "Birinci sayıyı giriniz: "
sayi1 = gets.to_i

print "İkinci sayıyı giriniz: "
sayi2 = gets.to_i

ussel_sayi sayi1, sayi2  # Fonksiyona parametre yollarsak
ussel_sayi               # Parametre yollamazsak varsayılan değeri kullanır

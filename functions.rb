# Fonksiyonlara Giriş

def karsilama ad, soyad  # Parametreler
    p "Hoşgeldin #{ad} #{soyad}"
end

print "Lütfen adınızı giriniz: "
ad = gets.chomp

print "Lütfen soyadınızı giriniz: "
soyad = gets.chomp

karsilama ad, soyad  # Fonksiyonu çağırma işlemi
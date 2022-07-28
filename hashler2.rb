# Hash içerisine default değer atamak
dersler = {mat:"80", turkce:"90", ingilizce:"70"}
dersler.default = "0"

p dersler[:tarih]  # Tanımlanmamış keyler için default olarak değer atar.

# Yeni Hash oluştururken default değer atamak

ders_notları = Hash.new("0") # Tanımlanmamış her anahtar için 0 değeri atar

ders_notları[:mat] = "50"
p ders_notları
p ders_notları[:tarih]

# Hash içerisinde değer ile anahtar bulma
puts "----------------------------------"
musteri = {musteri_adi:"burak", musteri_soyadi:"bulut"}
p musteri.key("bulut")


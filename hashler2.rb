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

# Hash Count, Size, Length İfadeleri
puts "----------------------------------"

a = {elma:"kırmızı", armut:"yeşil"}
p a.count
p a.size
p a.length

# Hash Keys, Values, Values_at İfadeleri
puts "----------------------------------"

b = {elma:"kırmızı", armut:"yeşil", muz:"sarı", patlıcan:"mor"}
p b.keys
p b.values
p b.values_at(:elma, :patlıcan)


# Hash has_keys? ve has_value? ifadeleri
puts "----------------------------------"

p b.has_key?(:muz)
p b.has_key?(:ananas)

p b.has_value?("yeşil")
p b.has_value?("siyah")
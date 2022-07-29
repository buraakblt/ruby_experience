# Fonksiyonlarda Dizi Kullanımı

dizi = [0, 1, 2, 3, 4, 5, 6, 7]
p "Mevcut Dizi: #{dizi}"
print "[0] Dizi Boyutu\n[1] Başına Eleman Ekle\n"+
"[2] Sonuna Eleman Ekle\n[3] Başındaki Elemanı Sil\n"+
"[4] Sonundaki Elemanı Sil\n[5] Belirtilen Yere Eleman Ekle\n"+
"[6] Belirtilen Yerdeki Elemanı Sil\n"
karar = gets.to_i

def boyut dizi
    p dizi.length
end

def basa_ekle dizi, index
    dizi.unshift(index)
end

def sona_ekle dizi, index
    dizi.push(index)
end

def basi_sil dizi
    dizi.shift
end

def sonu_sil dizi
    dizi.pop
end

def eleman_ekle dizi, adres, index
    dizi.insert(adres, index)
end

def eleman_sil dizi, adres
    dizi.delete_at(adres)
end

case karar
when 0
    p "Dizi boyutu: #{boyut dizi}"
when 1
    print "Dizi başına eklemek istediğiniz numerik eleman: "
    index = gets.to_i
    basa_ekle dizi, index
when 2
    print "Dizi sonuna eklemek istediğiniz numerik eleman: "
    index = gets.to_i
    sona_ekle dizi, index
when 3 
    basi_sil dizi
when 4 
    sonu_sil dizi
when 5
    print "Dizinin kaçıncı sırasına eleman eklemek istersiniz: "
    adres = gets.to_i
    print "Diziye eklemek istediğiniz numerik eleman: "
    index = gets.to_i
    eleman_ekle dizi, adres, index
when 6
    print "Dizinin kaçıncı elemanını silmek istersiniz: "
    adres = gets.to_i
    eleman_sil dizi, adres
end

p "Dizinin son hali: #{dizi}"


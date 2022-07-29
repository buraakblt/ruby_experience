# Fonksiyonlarda çoklu değer atama

def markalar (*arabalar)
    return puts "Stokta mevcut arabalar:\n"+
    "#{arabalar.join("\n")}"
end

arabalar = Array.new(4)
i = 0

while i < arabalar.length do
    print "#{i+1}. araba markasını giriniz: "
    arabalar[i] = gets.chomp
    i += 1
end

markalar arabalar


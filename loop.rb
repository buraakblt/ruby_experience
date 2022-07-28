# Loop Döngüsü

print "0'dan ardışık artmasını istediğiniz sayıyı giriniz: "
sayi = gets.to_i
a = 0

loop do
    p a
    break if a == sayi
    a += 1
end

# Redo İfadesi (o anki işlemi tekrar etme fırsatı sunar)

5.times do |a|
    p "Şuanki işlem : #{a}"
    p "Aynı adım tekrarlansın mı? (e/h)"
    cevap = gets.chomp
    redo if cevap == "e"
end





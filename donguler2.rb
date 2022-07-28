# While Döngüsü (Faktoriyel Fonksiyonu)

print "Faktoriyelini almak istediğiniz sayıyı giriniz:"
sayi = gets.to_i
faktoriyel = 1

while sayi > 0 do
    faktoriyel *= sayi
    sayi -= 1
end

puts "Girdiğiniz sayısının faktoriyeli: #{faktoriyel}"

# Break ifadesi

1.upto 10 do |i|
    break if i == 6
    print "#{i}, "
end

puts "\n"

# Next İfadesi

10.times do |a|
    next if a == 4
    print "#{a}, "
end



# Downto Döngüsü
p "Roketin fırlatılmasına kalan süre:"

10.downto 1 do |i|
    p i   
end

p "Roket başarıyla fırlatıldı!"

# Times Döngüsü
5.times {
    p "Merhaba Ruby"
}

# Upto Döngüsü
1.upto 5 do |i|
    p i
end

# Step Döngüsü

1.step 10 do |i|
    print "#{i} - "
end

puts "\n"

10.step 1, -1 do |i|
    print "#{i} - "
end


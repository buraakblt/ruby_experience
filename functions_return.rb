# Fonksiyonlarda return kullanımı

def kiyasla (x,y)
    if x > y 
        return p "#{x} sayısı #{y} sayısından büyüktür."
    else
        return p "#{y} sayısı #{x} sayısından büyüktür."
    end
end

print "Kıyaslamak istediğiniz sayılardan ilkini giriniz: "
x = gets.to_i

print "Kıyaslamak istediğiniz sayılardan ikincisini giriniz: "
y = gets.to_i

kiyasla x, y

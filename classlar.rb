# Sınıf Yapıları

class Hesaplama
    
    def toplama (a,b)
        return a + b
    end

    def cikarma (a,b)
        return a - b
    end

    def carpma (a,b)
        return a * b
    end

    def bolme (a,b)
        return a / b
    end

end

obje = Hesaplama.new
print "[0] Toplama\n[1] Çıkarma\n[2] Çarpma\n[3] Bölme\n"+
"Yapmak istediğiniz işlemi tuşlayınız: "
karar = gets.to_i


case karar
when 0
    print "Birinci sayıyı giriniz: "
    a = gets.to_i
    print "İkinci sayıyı giriniz: "
    b = gets.to_i
    p "Toplama sonucu: #{obje.toplama(a,b)}"
when 1
    print "Birinci sayıyı giriniz: "
    a = gets.to_i
    print "İkinci sayıyı giriniz: "
    b = gets.to_i
    p "Çıkarma sonucu: #{obje.cikarma(a,b)}"
when 2
    print "Birinci sayıyı giriniz: "
    a = gets.to_i
    print "İkinci sayıyı giriniz: "
    b = gets.to_i
    p "Çarpma sonucu: #{obje.carpma(a,b)}"
when 3
    print "Birinci sayıyı giriniz: "
    a = gets.to_i
    print "İkinci sayıyı giriniz: "
    b = gets.to_i
    p "Bölme sonucu: #{obje.bolme(a,b)}"
end

# Sınıf yapılarında miras alma

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

class Ekhesaplama < Hesaplama # Ekhesaplama sınıfı, Hesaplama sınıfından miras alıyor ve onun metodlarını kullanma yetkisi var.
    
    def mod_al (a,b)
        return a % b
    end
end

myObj = Ekhesaplama.new
p myObj.toplama(5,5)
p myObj.cikarma(10,5)
p myObj.carpma(5,5)
p myObj.bolme(5,5)
p myObj.mod_al(13,5)
#!/usr/bin/env ruby
class MegaGreeter
    attr_accessor :names

    # Nesnenin üretilmesi
    def initialize(names = "World")
        @names = names
    end

    # Herkese merhaba de
    def say_hi
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("each")
            # @names içinde bir çeşit liste var, içinde döndür!
            @names.each do |name|
                puts "Hello #{name}!"
            end
        else
            puts "Hello #{@names}!"
        end
    end

    # Herkese hoşçakal de
    def say_bye
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("join")
            # Liste elemanlarını virgülle birleştir
            puts "Goodbye #{@names.join(",")}. Come back soon!"
        else 
            puts "Goodbye #{@names}. Come back soon!"
        end
    end
end

if __FILE__ == $0
    mg = MegaGreeter.new
    mg.say_hi
    mg.say_bye

    # İsmi "Zeke" olarak değiştir
    mg.names = "Zeke"
    mg.say_hi
    mg.say_bye

    # İsmi bir isimler dizisine çevir
    mg.names = ["Albert", "Brenda", "Charles", "Dave", "Engelbert"]
    mg.say_hi
    mg.say_bye

    # nil yap
    mg.names = nil
    mg.say_hi
    mg.say_bye

end
  
        


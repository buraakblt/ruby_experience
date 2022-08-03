file = File.open("sample.txt", "w")
users = {"burak" => 123456, "john22" => 123457}
users.store("ali", 123455)
users.each { |key, value| file.puts "#{key}\t#{value}"}

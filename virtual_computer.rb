class Computer
    
    $users = {"buraakblt" => "123456", "john22" => "123457"}
    @@files = {"algorithms.txt" => "2022-08-02 14:31:01 +0300", "lectures.pdf" => "2022-08-02 14:31:01 +0300"}

    def initialize(username, password)

      @username = username
      @password = password
      $users[username] = password

    end
  
    def create(filename)

      time = Time.now
      @@files[filename] = time
      puts "#{filename} was created by #{@username} at #{time}."

    end
  

    def update_files
        puts "What is the file name do you want to update?"
        fileName = gets.chomp

        if @@files[fileName].nil?
            puts "File not found!"
        else
            puts "What is the new name?"
            updateName = gets.chomp
            @@files[updateName] = @@files.delete(fileName)
            time = Time.now
            @@files[updateName] = time 
            puts "#{fileName} has been updated with new file name of #{updateName}" 
        end

    end

    def delete_files
        puts "What is the file name do you want to delete?"
        delete_file = gets.chomp
        
        if @@files[delete_file].nil?
            puts "File not found!"
        else
            @@files.delete(delete_file)
            puts "#{delete_file} was successfuly deleted!"
        end

    end

    def Computer.get_users

        $users.each do |key, value|
            puts "Username: #{key}     Password: #{value}"
        end
  
    end

    def Computer.get_files

        @@files.each do |key, value|
            puts "File Name: #{key}     Creation Time: #{value}"
        end
    end

    def change_password
        print "Enter your current password: "
        current_password = gets.chomp

        if $users.key(current_password).nil?
            puts "Wrong password!"
        else
            puts "What will be your new password?"
            new_password = gets.chomp
            $users[@username] = new_password
            puts "Password change successful!"
        end
    end

  end

  puts "[1] Sign In\n[2] Sign Up"
  entrance = gets.to_i
  case entrance
  when 1
    print "Username: "
    username = gets.chomp
    while $users[username].nil? do
      puts "User not found! Do you want to try again? (y/n)"
      yes_no = gets.chomp
      
      if yes_no == "y"
        print "Username: "
        username = gets.chomp
      else
        begin
            exit
        rescue => SystemExit
            p "The program is terminating..."
        end
      end
    end
      
    print "Password: "
    password = gets.chomp
  
    while !$users.has_value?(password) do
      puts "Password is wrong! Do you want to try again? (y/n)"
      choice = gets.chomp
  
      if choice == "y"
          print "Password: "
          password = gets.chomp
      else
          begin
              exit
          rescue => SystemExit
              p "The program is terminating..."
          end
      end
      
    end
    puts "Username and password are correct!\n"
    username = Computer.new(username, password)
    puts "\nPress any key for continue..."
    press = gets.chomp
    
    console_loop = 1
  
    while console_loop != 0 do
      
      puts "--------------------------------------------------"
      puts "[0] Exit\n"+
      "[1] Create File\n"+
      "[2] Update File\n"+
      "[3] Delete File\n"+
      "[4] Display Files\n"+
      "[5] User Info\n"+
      "[6] Change Password\n\n"+"Which action would you like to take?"
      puts "--------------------------------------------------\n"
    
      action = gets.to_i
    
      case action
      when 0
          puts "The program is terminating..."
          console_loop = 0
      when 1
        puts "What will be name of the file?"
        file_name = gets.chomp
        username.create(file_name)
        puts "\nPress any key for continue..."
        press = gets.chomp
      when 2
          username.update_files
          puts "\nPress any key for continue..."
          press = gets.chomp
      when 3
          username.delete_files
          puts "\nPress any key for continue..."
          press = gets.chomp
      when 4
        Computer.get_files
        puts "\nPress any key for continue..."
        press = gets.chomp
      when 5
        Computer.get_users
        puts "\nPress any key for continue..."
        press = gets.chomp
      when 6
          username.change_password
          puts "\nPress any key for continue..."
          press = gets.chomp
      else
        puts "Invalid entry!"
      end
    
    end
when 2
    print "Username: "
    username = gets.chomp
    print "Password: "
    password = gets.chomp
    
    $users.store(username, password)
    username = Computer.new(username, password)
    
    puts "Congratulations, your registration has been successfully completed!\n"
    puts "\nPress any key for continue..."
    press = gets.chomp

    console_loop = 1
  
    while console_loop != 0 do
      
      puts "--------------------------------------------------"
      puts "[0] Exit\n"+
      "[1] Create File\n"+
      "[2] Update File\n"+
      "[3] Delete File\n"+
      "[4] Display Files\n"+
      "[5] User Info\n"+
      "[6] Change Password\n\n"+"Which action would you like to take?"
      puts "--------------------------------------------------\n"
    
      action = gets.to_i
    
      case action
      when 0
          puts "The program is terminating..."
          console_loop = 0
      when 1
        puts "What will be name of the file?"
        file_name = gets.chomp
        username.create(file_name)
        puts "\nPress any key for continue..."
        press = gets.chomp
      when 2
          username.update_files
          puts "\nPress any key for continue..."
          press = gets.chomp
      when 3
          username.delete_files
          puts "\nPress any key for continue..."
          press = gets.chomp
      when 4
        Computer.get_files
        puts "\nPress any key for continue..."
        press = gets.chomp
      when 5
        Computer.get_users
        puts "\nPress any key for continue..."
        press = gets.chomp
      when 6
          username.change_password
          puts "\nPress any key for continue..."
          press = gets.chomp
      else
        puts "Invalid entry!"
      end
    
    end
  
  
end 

def open_menu
    loop do 
      p "Options:"
      p "1. Register Products"
      p "2. Products List"
      p "3. Back Product"
      p "4. Back"
  
      option = gets.to_i
  
      case option
      when 1
        p "Cadastro"
      when 2
        p "Lista"
      when 3
        p "Retirada"
      when 4
        exit
      else
        p "invalid option"
      end
    end
  end
  
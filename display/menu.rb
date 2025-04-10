require_relative('./operations_display')

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
        message 'Cadastro'

        clean_display()
      when 2
        message "Lista" 
        
        clean_display()
      when 3
        message "Retirada"
  
        clean_display()
      when 4
        exit
      else
        message "invalid option"
        
        clean_display()
      end
    end
  end
  
require_relative('./operations_display')

def open_menu
    loop do 
      p "Options:"
      p "1. Register Products"
      p "2. Products List"
      p "3. Back Product"
      p "4. Exit"
  
      option = gets.to_i
  
      case option
      when 1
        success_message 'Cadastro'
      when 2
        success_message "Lista" 
      when 3
        success_message "Retirada"
      when 4
        clean_display()
        exit
      else
        error_message "invalid option"
      end
    end
  end
  
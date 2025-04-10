require_relative('./operations_display')
require_relative('../controller/product_controller')

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
        message "Cadastro"
        create_product
      when 2
        message "Lista" 
      when 3
        message "Retirada"
      when 4
        clean_display()
        exit
      else
        error_message "invalid option"
      end
    end
  end
  
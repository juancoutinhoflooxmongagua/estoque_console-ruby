require_relative('./operations_display')
require_relative('../controller/product_controller')

def open_menu(products)
    loop do 
      p "Options:"
      p "1. Register Products"
      p "2. Products List"
      p "3. Back Product"
      p "4. Exit"
  
      option = gets.to_i
  
      case option
      when 1
        create_product(products)
      when 2
        list_products(products)
      when 3
        delete_product(products)
      when 4
        clean_display()
        exit
      else
        error_message "invalid option"
      end
    end
  end
  
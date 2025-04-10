def create_product(products)
    message "Digite o nome do produto:"
    nome = gets.chomp
    
    success_message("Produto '#{nome}' cadastrado com sucesso!")
    pause
  end
  
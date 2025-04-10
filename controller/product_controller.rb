require_relative('../model/product.rb')

def create_product
    message "Digite o nome do produto:"
    nome = gets.chomp
    
    success_message("Produto '#{nome}' cadastrado com sucesso!")
    pause
  end
  
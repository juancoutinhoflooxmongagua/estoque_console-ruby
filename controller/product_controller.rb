def create_product(products)
    message "Digite o nome do produto:"
    name = gets.chomp
    
    message "Digite a descrição do produto #{name}:"
    description = gets.chomp
        
    message "Digite o preço do produto #{name}:"
    price = gets.to_f

    message "Digite a quantidade de estoque do produto #{name}:"
    qtd = gets.to_f

    success_message("Produto '#{name}' cadastrado com sucesso!")

    success_message("PRODUTO:
    Nome: #{name}
    Descrição: #{description}
    Preço: #{price}
    Quantidade Estoque: #{qtd}
    ")
    
    products << {
        id: Time.now.to_i
        name: name,
        description: description,
        price: price,
        qtd: qtd,
    }

    pause
end

def list_products(products)
    message "Lista de Produtos:"

    products.each do |product|
        
    end
end
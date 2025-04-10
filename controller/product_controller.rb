require 'terminal-table'

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

  success_message("PRODUTO:\nNome: #{name}\nDescrição: #{description}\nPreço: #{price}\nQuantidade Estoque: #{qtd}")

  products << {
    id: Time.now.to_i,
    name: name,
    description: description,
    price: price,
    stock: qtd
  }

  pause
end

def list_products(products)
  if products.empty?
    warning_message("Nenhum produto cadastrado.")
    return
  end

  rows = products.map do |p|
    [p[:name], p[:description], p[:price], p[:stock]]
  end

  table = Terminal::Table.new(
    title: "Lista de Produtos",
    headings: ['Nome', 'Descrição', 'Preço (R$)', 'Estoque'],
    rows: rows
  )

  puts table
end


def delete_product
end
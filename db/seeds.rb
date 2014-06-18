# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: "Chicago" }, { name: "Copenhagen" }])
#   Mayor.create(name: "Emanuel", city: cities.first)
Produto.create(nome: "Camiseta Terno", modelo: "Casual", preco: "R$23,40", tamanhos: "P, M, G", cores: "preto", quantidade: "5", descricao: "Produto contém estampa de terno solto na frente", foto: File.new("app/assets/images/camiseta1.jpg"))
Produto.create(nome: "Camiseta Calendário", modelo: "Casual", preco: "R$40,00", tamanhos: "M, G", cores: "branco, vermelha", quantidade: "34", descricao: "Produto contém estampa de calendário na frente e inclui caneta para escrever na camiseta", foto: File.new("app/assets/images/camiseta2.jpg"))
Produto.create(nome: "Camiseta Gato Preto", modelo: "Casual", preco: "R$20,00", tamanhos: "P, M, G", cores: "branco, verde, azul", quantidade: "32", descricao: "Produto contém estampa de gato preto com frase 'Black cats rule'", foto: File.new("app/assets/images/camiseta3.jpg"))
Produto.create(nome: "Camiseta Tuxedo", modelo: "Casual", preco: "R$30,00", tamanhos: "P, G", cores: "laranja, preto, azul, vermelha", quantidade: "12", descricao: "Produto contém estampa de terno com gravata, flor, e bolsos", foto: File.new("app/assets/images/camiseta4.jpg"))

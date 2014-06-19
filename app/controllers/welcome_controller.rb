class WelcomeController < ApplicationController
  def index
  	# se existem parametros, criar variavel para ser usada para não mostrar o cabeçario ao abrir a página
  	@params = false
  	p = 0
  	params.each do |param|
  		if params.present?
  			p += 1
  		end
  		if p > 2
  			@params = true
  		end
  	end

  	# mostrar dois ou quatro produtos, de acordo com a escolha do formulário
  	session[:numero] ||= 4 
  	session[:numero] = params[:numero] if params[:numero]
	@numero = session[:numero].to_i
	@two = ""
	@two = "two_products" if @numero == 2

	# criar variáveis para mostrar os produtos buscados
	@produtos = Produto.all
  	@busca = Array.new
  	@produto = Array.new
  	for i in 0..3
  		if params[:produto[i]]
  		  @busca[i] = params[:produto[i]]
  		  session[:produto[i]] = @busca[i]
  		end
		@produto[i] = Produto.find_by(nome: session[:produto[i]]) if session[:produto[i]]
  	end
  end
end

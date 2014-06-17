class WelcomeController < ApplicationController
  def index
  	@params = false
  	p = 0
  	params.each do |param|
  		if param.present?
  			p += 1
  		end
  		if p > 2
  			@params = true
  		end
  	end

  	session[:numero] ||= 4 
  	session[:numero] = params[:numero] if params[:numero]
	@numero = session[:numero].to_i
	@two = ""
	@hide = ""
	@two = "two_products" if @numero == 2
	@hide = "true" if @numero == 2

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

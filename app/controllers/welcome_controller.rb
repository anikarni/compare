class WelcomeController < ApplicationController
  def index
  	session[:numero] ||= 4 
  	session[:numero] = 2 if params[:numero2]
  	session[:numero] = 4 if params[:numero4]
	session[:produto1] = params[:produto1] if params[:produto1]
	session[:produto2] = params[:produto2] if params[:produto2]
	session[:produto3] = params[:produto3] if params[:produto3]
	session[:produto4] = params[:produto4] if params[:produto4]

	@numero = session[:numero]
	@two = "two_products" if @numero == 2
	@hide = "true" if @numero == 2
	@two = "" if @numero == 4
	@hide = "" if @numero == 4
	@produtos = Produto.all
	@produto1 = Produto.find_by(nome: session[:produto1]) if session[:produto1]
	@produto2 = Produto.find_by(nome: session[:produto2]) if session[:produto2]
	@produto3 = Produto.find_by(nome: session[:produto3]) if session[:produto3]
	@produto4 = Produto.find_by(nome: session[:produto4]) if session[:produto4]
  end
end

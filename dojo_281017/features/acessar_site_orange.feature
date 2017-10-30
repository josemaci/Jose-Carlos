#language: pt
#utf-8

	@SiteOrange
	Funcionalidade: Acessar site orange
	Eu como usuario do site Orange
	Quero realizar diversos serviços dentro do site
	Para ter informações dos empregados

 	  @cadastroemployee
 	  Cenario: Cadastrar empregado 
 	  Dado que esteja logado no site OrangeHRM
 	  Quando acesso a pagina Add Employee
 	  E cadastro um empregado 
 	  Entao apresentara empregado cadastrado

 	  @editaremployee
 	  Cenario: Editar cadastro empregado
 	  Dado que esteja logado no site Orange
 	  Quando acesso a pagina Employee List
 	  E edito o cadastro de um funcionario 
 	  Entao exibira informações atualizadas 
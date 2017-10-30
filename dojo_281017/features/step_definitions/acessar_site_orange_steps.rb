Dado("que esteja logado no site OrangeHRM") do
  visit "http://opensource.demo.orangehrmlive.com/"
	fill_in('txtUsername', :with => 'admin')
 	fill_in('txtPassword', :with => 'admin')
 	click_button('btnLogin')
end

Quando("acesso a pagina Add Employee") do
  click_link('menu_pim_viewPimModule')
end

Quando("cadastro um empregado") do
  click_link('menu_pim_addEmployee')
  fill_in('firstName', :with => 'Jose Carlos')
  fill_in('lastName', :with => 'Leite')
  click_button('btnSave')
end

Entao("apresentara empregado cadastrado") do
  click_link('menu_pim_addEmployee')
	click_link('menu_pim_viewEmployeeList')
	fill_in('empsearch_employee_name_empName', :with => 'Jose Carlos')
	click_button('searchBtn')
	assert_text('Jose Carlos')
end

Dado("que esteja logado no site Orange") do
  visit "http://opensource.demo.orangehrmlive.com/"
 	fill_in('txtUsername', :with => 'admin')
 	fill_in('txtPassword', :with => 'admin')
 	click_button('btnLogin')
end

Quando("acesso a pagina Employee List") do
  find(:xpath, '//*[@id="menu_pim_viewPimModule"]/b').click
  click_link('menu_pim_viewEmployeeList')
  click_link('Jose Carlos')
end

Quando("edito o cadastro de um funcionario") do
  click_button('btnSave')
	fill_in('personal_txtEmpFirstName', :with => 'Jose Torres')
	choose('personal_optGender_1')
	click_button('btnSave')
end

Entao("exibira informações atualizadas") do
	assert_text('Jose Torres')
end
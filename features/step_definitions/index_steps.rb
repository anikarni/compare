Given(/^I'm on the index page$/) do
  visit 'welcome/index'
end

When(/^I search for "(.*?)" in "(.*?)"$/) do |busca, field|
  fill_in(field, :with => busca)
end

When(/^I click "(.*?)"$/) do |button|
  click_button(button)
end

When(/^I check "(.*?)"$/) do |checkbox|
  check(checkbox)
end

Then(/^I should see "(.*?)"$/) do |title|
  @produto = Produto.find_by(nome: title)

  page.should have_content(@produto.nome)
  page.should have_content(@produto.modelo)
  page.should have_content(@produto.preco)
  page.should have_content(@produto.cores)
end

Then(/^I should not see "(.*?)"$/) do |name|
  page.should have_content(name)
end
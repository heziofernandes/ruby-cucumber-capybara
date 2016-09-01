# encoding: utf-8
Given(/^the administrator is logged in$/) do
#
  visit "file:///home/hezio/dev/form-html-simple-project-cucumber/formautomacao.html"
end

When(/^insert a name$/) do
    fill_in 'name', with: 'Hezinho Drumfeel'
end

When(/^insert a login$/) do
    fill_in 'login', with: '@fernandes'
end

When(/^insert a password$/) do
    fill_in 'password', with: 'test1234'
end

When(/^insert a email$/) do
    fill_in 'email', with: 'fernandes@email.com'
end

When(/^insert a main adress$/) do
    fill_in 'address', with: '350 5th Ave, New York, NY 10118, Estados Unidos'
end

When(/^insert a reference address$/) do
    fill_in 'reference-address', with: 'near anywhere'
end

When(/^select an academic background$/) do
    find(:id, 'opt-highlander').click
end

When(/^select a course of interest$/) do
     select "Python", :from => "qa-select"
end

When(/^save the form$/) do
    find(:id, 'btn-save').click
 end

Then(/^the system informs the administrator of successfully register\.$/) do
   page.has_css?('class.messageBox', :text => 'Cadastro Realizado com Sucesso!', :visible => true)
end

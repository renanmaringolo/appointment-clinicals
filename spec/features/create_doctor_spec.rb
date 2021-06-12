require 'rails_helper'

feature 'create doctor' do
  scenario 'successsfully' do
    user = create(:user)
    doc = create(:doctor)

    login_as user
    visit root_path
    click_on 'Registrar Médico'
    fill_in 'Name', with: doc.name
    fill_in 'Crm', with: doc.crm
    fill_in 'Crm uf', with: doc.crm_uf

    click_on 'Salvar'

    expect(page).to have_content('Médico cadastrado com sucesso!')
    expect(page).to have_content(doc.name)
  end

  scenario 'without login' do
    visit root_path
    expect(page).not_to have_link('Registrar Médico')
  end
end

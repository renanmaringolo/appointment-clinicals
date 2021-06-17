require 'rails_helper'

feature 'Edit Doctor' do
  scenario 'successfuly' do
    user = create(:user)
    doctor = create(:doctor)

    login_as user
    visit root_path
    click_on 'Lista de Médicos'
    click_on doctor.name
    click_on 'Editar'
    
    fill_in 'Nome', with: doctor.name
    fill_in 'CRM', with: '555410005'
    fill_in 'CRM_UF', with: doctor.crm_uf
    click_on 'Salvar'

    expect(page).to have_content('Médico atualizado com sucesso.')
    expect(page).to have_content(doctor.name)
  end
end

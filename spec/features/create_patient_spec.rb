require 'rails_helper'

feature 'Create patient' do
  scenario 'successsfully' do
    user = create(:user)
    patient = create(:patient)

    login_as user
    visit root_path
    click_on 'Registrar Paciente'
    fill_in 'Nome', with: patient.name
    fill_in 'CPF', with: patient.cpf
    fill_in 'Data de Nascimento', with: patient.birth_date

    click_on 'Salvar'

    expect(page).to have_content('Paciente registrado com sucesso!')
    expect(page).to have_content(patient.name)
  end

  scenario 'without login' do
    visit root_path
    expect(page).not_to have_link('Registrar Paciente')
  end
end

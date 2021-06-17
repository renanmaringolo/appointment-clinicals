require 'rails_helper'

feature 'Edit Patient' do
  scenario 'successfuly' do
    user = create(:user)
    patient = create(:patient)

    login_as user
    visit root_path
    click_on 'Lista de Pacientes'
    click_on patient.name
    click_on 'Editar'

    fill_in 'Nome', with: patient.name
    fill_in 'CPF', with: '01234567899'
    fill_in 'Data de Nascimento', with: patient.birth_date
    click_on 'Salvar'

    expect(page).to have_content('Paciente atualizado com sucesso.')
  end
end

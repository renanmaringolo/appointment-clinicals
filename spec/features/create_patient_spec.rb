require 'rails_helper'

feature 'create patient' do
  scenario 'successsfully' do
    user = create(:user)
    patient = create(:patient)

    login_as user
    visit root_path
    click_on 'Registrar Paciente'
    fill_in 'Name', with: Faker::Name.name_with_middle
    fill_in 'Cpf', with: Faker::Number.leading_zero_number(digits: 11)
    fill_in 'Birth date', with: '12/03/2019'

    click_on 'Salvar'

    expect(page).to have_content('Paciente registrado com sucesso!')
    expect(page).to have_content(patient.name)
  end

  scenario 'without login' do
    visit root_path
    expect(page).not_to have_link('Registrar Paciente')
  end
end

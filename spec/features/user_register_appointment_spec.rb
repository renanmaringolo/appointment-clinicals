require 'rails_helper'

feature 'User register appointment' do
  scenario 'successfully' do
    doctor = create(:doctor)
    patient = create(:patient)
    user = create(:user)

    login_as user
    visit root_path
    click_on 'Marcar Consulta'
    fill_in 'Início da Consulta', with: Date.parse('20201016').beginning_of_day
    fill_in 'Término da Consulta', with: Date.parse('20201016').end_of_day
    select doctor.name_crm, from: 'Médico'
    select patient.name_cpf, from: 'Paciente'
    click_on 'Salvar'

    expect(page).to have_content('Consulta agendada com sucesso!')
    expect(page).to_not have_content('Marcar Consulta')
  end
end


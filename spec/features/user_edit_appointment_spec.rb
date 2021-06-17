require 'rails_helper'

feature 'Edit Appointment' do
  scenario 'successfuly' do
    user = create(:user)
    patient = create(:patient)
    doctor = create(:doctor)
    appointment = create(:appointment, doctor_id: doctor.id, patient_id: patient.id)

    login_as user
    visit root_path
    click_on 'Calendário de Consultas Agendadas'
    click_link(appointment.patient.name, match: :first)
    click_on 'Editar'

    fill_in 'Início da Consulta', with: Date.parse('20201016').beginning_of_day
    fill_in 'Término da Consulta', with: Date.parse('20201016').end_of_day
    select doctor.name_crm, from: 'Médico'
    select patient.name_cpf, from: 'Paciente'
    click_on 'Salvar'

    expect(page).to have_content('Consulta atualizada com sucesso.')
    expect(page).to have_content(appointment.patient.name)
    expect(page).to have_content(appointment.doctor.name)
    expect(page).to have_content('Data da Consulta')
  end
end
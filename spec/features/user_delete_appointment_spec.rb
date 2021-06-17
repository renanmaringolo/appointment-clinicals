require 'rails_helper'

feature 'Delete Appointment' do
  scenario 'successfuly' do
    user = create(:user)
    patient = create(:patient)
    doctor = create(:doctor)
    appointment = create(:appointment, doctor_id: doctor.id, patient_id: patient.id)

    login_as user
    visit root_path
    click_on 'Calendário de Consultas Agendadas'
    click_link(appointment.patient.name, match: :first)
    click_on 'Excluir'

    expect(page).not_to have_link(appointment.patient.name)
    expect(page).to have_content('Consulta excluída com sucesso!')
  end
end

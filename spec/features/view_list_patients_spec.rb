require 'rails_helper'

feature 'User view patients list' do
  scenario 'successfully' do
    user = create(:user)
    patient_1 = create(:patient)
    patient_2 = create(:patient)

    login_as user
    visit root_path

    click_on 'Lista de Pacientes'

    expect(page).to have_link(patient_1.name)
    expect(page).to have_link(patient_2.name)
  end
  scenario 'list 20 patients on page' do
    user = create(:user)
    patients = create_list(:patient, 21)

    login_as user
    visit root_path
    
    click_on 'Lista de Pacientes'

    expect(page).to have_link(patients.first.name)
    expect(patients.count).to eq(21)
    expect(page).not_to have_content(patients.last.name)
  end
end


require 'rails_helper'

feature 'User view doctors list' do
  scenario 'successfully' do
    user = create(:user)
    doc_1 = create(:doctor)
    doc_2 = create(:doctor)

    login_as user
    visit root_path

    click_on 'Lista de Médicos'

    expect(page).to have_link(doc_1.name)
    expect(page).to have_link(doc_2.name)
  end
  scenario 'list 20 doctors on page' do
    user = create(:user)
    doctors = create_list(:doctor, 21)

    login_as user
    visit root_path
    
    click_on 'Lista de Médicos'

    expect(page).to have_link(doctors.first.name)
    expect(doctors.count).to eq(21)
    expect(page).not_to have_content(doctors.last.name)
  end
end


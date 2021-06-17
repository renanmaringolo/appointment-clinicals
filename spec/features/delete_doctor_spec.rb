require 'rails_helper'

feature 'Delete Doctor' do
  scenario 'successfuly' do
    user = create(:user)
    doctor = create(:doctor)

    login_as user
    visit root_path
    click_on 'Lista de Médicos'
    click_on doctor.name
    click_on 'Excluir'

    expect(page).not_to have_link(doctor.name)
    expect(page).to have_content('Perfil excluído com sucesso.')
  end
end

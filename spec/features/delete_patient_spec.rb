require 'rails_helper'

feature 'Delete Patient' do
  scenario 'successfuly' do
    user = create(:user)
    patient = create(:patient)

    login_as user
    visit root_path
    click_on 'Lista de Pacientes'
    click_on patient.name
    click_on 'Excluir'

    expect(page).not_to have_link(patient.name)
    expect(page).to have_content('Perfil excluído com sucesso.')
  end
end

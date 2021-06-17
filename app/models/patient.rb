class Patient < ApplicationRecord
  validates :name, length: { maximum: 130 }, presence: true
  validates :cpf, length: { is: 11 }, presence: true
  validates :birth_date, presence: true

  has_many :appointments, dependent: :destroy

  def name_cpf
    "#{name} - #{cpf}"
  end
end


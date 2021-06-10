class Doctor < ApplicationRecord
  validates_presence_of [:name, :crm, :crm_uf]
  validates_length_of :name, maximum: 130
  validates_length_of :crm_uf, is: 2
  validates_length_of :crm, minimum: 4, maximum: 10
end

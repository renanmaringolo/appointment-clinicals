class PatientsController < ApplicationController
  before_action :authenticate_user!

  def new
    @patient = Patient.new
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def index
    @patients = Patient.all
  end

  def create
    @patient = Patient.new(patient_params)

    if @patient.save
      flash[:notice] = 'Paciente registrado com sucesso!'
      redirect_to patients_path
    else
      render :new
    end
  end

  private

  def patient_params
    params.require(:patient).permit %i(id name cpf birth_date)
  end
end

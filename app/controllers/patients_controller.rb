class PatientsController < ApplicationController
  before_action :patient_finder, only: %i(edit update destroy)

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

  def edit; end

  def update
    if @patient.update(patient_params)
      flash[:notice] = 'Paciente atualizado com sucesso.'
      redirect_to @patient
    else
      render :edit
    end
  end

  def destroy
    if @patient.destroy
      flash[:notice] = 'Perfil excluído com sucesso.'
      redirect_to patients_path
    else
      flash[:alert] = 'Paciente não pôde ser excluído por algum motivo'
      redirect_to patients_path
    end
  end

  private

  def patient_finder
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit %i(id name cpf birth_date)
  end
end

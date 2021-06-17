class AppointmentsController < ApplicationController
  before_action :appointment_finder, only: %i(show edit update destroy)
  
  def new
    @appointment = Appointment.new
    @doctors = Doctor.all
    @patients = Patient.all
  end

  def index
    @appointments = Appointment.all
  end

  def create
    @appointment = Appointment.new(appointment_params)

    if @appointment.save!
      flash[:notice] = 'Consulta agendada com sucesso!'
      redirect_to @appointment
    else
      render :new
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def edit; end

  def update
    if @appointment.update(appointment_params)
      flash[:notice] = 'Consulta atualizada com sucesso.'
      redirect_to @appointment
    else
      flash[:alert] = 'Atualização falhou. Um ou mais campos precisa ser preenchido.'
      render :edit
    end
  end

  private

  def appointment_finder
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit %i(id starts_at ends_at doctor_id patient_id)
  end
end
class ExtratosController < ApplicationController
  def index
    @user = current_user
    @saldo = current_user.saldo
    @balanco = Extrato.calcular_balanco current_user
    @extrato_entrada = Extrato.new
    @extrato_retirada = Extrato.new
    @extratos = Extrato.all.where(user_id: current_user.id).order(created_at: :desc)
  end

  def new
    @extrato = Extrato.new
  end

  def create
    @extrato = Extrato.new extrato_params
    @extrato.saldo_extrato = @extrato.calcular_saldo_extrato current_user
    @extrato.user_id = current_user.id
    @extrato.save
  end

  def balanco
    @balanco = Extrato.calcular_balanco current_user
  end

  def sidekiq_teste
    ReportWorker.perform_async("02/08/2020", "03/08/2020")
    @sidekiq = "REQUEST PARA GERAR UM REPORT"
  end
  
  private
  def extrato_params
    params.require(:extrato).permit([:valor, :tipo_lancamento])
  end
end

class ExtratosController < ApplicationController
  def index
    @extratos = Extrato.all.order :created_at
  end

  def new
    @extrato = Extrato.new
  end

  def create
    @extrato = Extrato.new extrato_params
    @extrato.save!
  end

  private
  
  def extrato_params
    params.require(:extrato).permit([:valor, :tipo_lancamento])
  end
end

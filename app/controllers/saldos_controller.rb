class SaldosController < ApplicationController
  def index
  end

  def new
  end

  def create
  end
  
  private
  def saldo_params
    params.require(:saldo).permit([])
  end
end

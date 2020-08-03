class Extrato < ApplicationRecord
  
  belongs_to :user

  after_create :somar_saldo

  def self.calcular_balanco user
    #soma de extrato.tipo:true - soma de extrato.tipo:false
    entradas = Extrato.where(tipo_lancamento: true, user_id: user.id).sum(:valor)
    saidas = Extrato.where(tipo_lancamento: false, user_id: user.id).sum(:valor)
    balanco = entradas - saidas
  end

  def somar_saldo
    self.tipo_lancamento ? self.user.saldo += self.valor : self.user.saldo -= self.valor 
    self.user.save!
  end

  def calcular_saldo_extrato user
    return self.tipo_lancamento ? user.saldo + self.valor : user.saldo - self.valor
    
  end
  

end
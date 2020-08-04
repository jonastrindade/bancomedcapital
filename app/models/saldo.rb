class Saldo < ApplicationRecord
  
  belongs_to :user
  before_create :set_saldo

  def set_saldo
    self.saldo = 0
  end

  def somar_saldo tipo_lancamento, valor
    tipo_lancamento ? self.saldo += valor : self.saldo -= valor 
    self.save
  end

end
class Saldo < ApplicationRecord
  
  belongs_to :user
  before_create :set_saldo

  def set_saldo
    self.saldo = 0
  end

  def somar_saldo tipo_lancamento, valor
    return tipo_lancamento ? self.user.saldo.saldo += self.valor : self.user.saldo.saldo -= self.valor 
    self.user.saldo.save!
  end

end
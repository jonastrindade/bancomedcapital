class Saldo < ApplicationRecord
  
  belongs_to :user

  def somar_saldo tipo_lancamento, valor
    tipo_lancamento ? self.saldo += valor : self.saldo -= valor 
    self.save
  end

end
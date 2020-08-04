class Saldo < ApplicationRecord
  
  belongs_to :user

  before_create :set_saldo

  def set_saldo
    self.saldo = 0
  end

end
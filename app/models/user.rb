class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :extratos
  has_one :saldo

  after_create :set_saldo

  def set_saldo
    Saldo.create(saldo: 0, user_id: self.id)
  end

end

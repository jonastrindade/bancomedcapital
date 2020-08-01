class SetarSaldo < ActiveRecord::Migration[5.2]
  def change
    User.all.each do |us|
      us.saldo = 0.0
      us.save!
    end
  end
end

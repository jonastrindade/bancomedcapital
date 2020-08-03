class SaldoNoExtrato < ActiveRecord::Migration[5.2]
  def change
    add_column :extratos, :saldo_extrato, :float
  end
end

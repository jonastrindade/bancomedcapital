class CorrecaoSaldo < ActiveRecord::Migration[5.2]
  def change
    change_column :extratos, :taxa, :decimal, precision: 2
    change_column :extratos, :valor, :decimal

    remove_column :extratos, :saldo_extrato
    remove_column :users, :saldo
  end
end

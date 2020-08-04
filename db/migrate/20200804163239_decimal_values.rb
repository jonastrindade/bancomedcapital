class DecimalValues < ActiveRecord::Migration[5.2]
  def change
    change_column :extratos, :taxa, :decimal
    change_column :saldos, :saldo, :decimal
  end
end

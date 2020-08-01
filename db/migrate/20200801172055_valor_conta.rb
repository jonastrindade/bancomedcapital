class ValorConta < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :saldo, :float
  end
end

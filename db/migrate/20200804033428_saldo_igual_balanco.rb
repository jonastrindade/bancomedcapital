class SaldoIgualBalanco < ActiveRecord::Migration[5.2]
  def change
    create_table :saldos do |t|
      t.decimal :saldo, precision: 8, scale: 2
      t.references :user
      t.timestamps
    end

    hange_column :saldos, :saldo, :decimal, precision: 8, scale: 2
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)

    User.all.each do |user|
      user.saldo.saldo = Extrato.calcular_balanco user
      user.saldo.save
    end
  end
end

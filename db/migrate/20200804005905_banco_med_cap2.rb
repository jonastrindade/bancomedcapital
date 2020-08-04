class BancoMedCap2 < ActiveRecord::Migration[5.2]
  def change
    create_table :saldos do |t|
      t.decimal :saldo, precision: 2
      t.references :user
      t.timestamps
    end

    User.all.each do |u|
      Saldo.create!(user_id: u.id, saldo: u.saldo)
    end

    remove_column :extratos, :saldo_extrato
    remove_column :users, :saldo

    change_column :extratos, :taxa, :decimal, precision: 2
    change_column :extratos, :valor, :decimal

  end
end

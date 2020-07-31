class ExtratosTable < ActiveRecord::Migration[5.2]
  def change
    create_table :extratos do |t|
      t.float :valor
      t.boolean :tipo_lancamento
      t.timestamps
    end
  end
end

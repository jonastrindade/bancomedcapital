class NovosCampo < ActiveRecord::Migration[5.2]
  def change
    add_column :extratos, :taxa, :float
    add_column :extratos, :descricao, :string

  end
end

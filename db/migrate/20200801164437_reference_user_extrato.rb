class ReferenceUserExtrato < ActiveRecord::Migration[5.2]
  def change
    add_reference :extratos, :user
  end
end

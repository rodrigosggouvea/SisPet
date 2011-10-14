class CreateClientes < ActiveRecord::Migration
  def self.up
  create_table :clientes do |t|
      t.string :cnpj
      t.string :nome
      t.string :arquivo

      t.timestamps
    end
  end

  def self.down
    drop_table :clientes
  end
end

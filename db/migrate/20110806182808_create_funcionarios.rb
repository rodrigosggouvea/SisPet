class CreateFuncionarios < ActiveRecord::Migration
  def self.up
    create_table :funcionarios do |t|
      t.string :nome
      t.date :data_admissao
      t.float :salario
      t.date :data_nasc
      t.text :endereco
      t.text :historico

      t.timestamps
    end
  end

  def self.down
    drop_table :funcionarios
  end
end

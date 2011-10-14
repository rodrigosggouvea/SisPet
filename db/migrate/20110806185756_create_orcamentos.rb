class CreateOrcamentos < ActiveRecord::Migration
  def self.up
    create_table :orcamentos do |t|
      t.string :nome_empresa
      t.string :cnpj_empresa
      t.float :valor
      t.date :data
      t.text :descricao

      t.timestamps
    end
  end

  def self.down
    drop_table :orcamentos
  end
end

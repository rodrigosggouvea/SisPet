class CreateDespesas < ActiveRecord::Migration
  def self.up
    create_table :despesas do |t|
      t.float :valor
      t.string :nome
      t.text :descricao
      t.date :vencimento
      t.boolean :paga

      t.timestamps
    end
  end

  def self.down
    drop_table :despesas
  end
end

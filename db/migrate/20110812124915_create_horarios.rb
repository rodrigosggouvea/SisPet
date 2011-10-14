class CreateHorarios < ActiveRecord::Migration
  def self.up
    create_table :horarios do |t|
      t.integer :hora
      t.integer :minuto
      t.integer :funcionario_id
      t.string  :tipo

      t.timestamps
    end
  end

  def self.down
    drop_table :horarios
  end
end

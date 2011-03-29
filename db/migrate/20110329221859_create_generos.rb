class CreateGeneros < ActiveRecord::Migration
  def self.up
    create_table :generos do |t|
      t.string :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :generos
  end
end

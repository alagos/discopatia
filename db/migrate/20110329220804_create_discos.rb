class CreateDiscos < ActiveRecord::Migration
  def self.up
    create_table :discos do |t|
      t.string :correlativo

      t.timestamps
    end
  end

  def self.down
    drop_table :discos
  end
end

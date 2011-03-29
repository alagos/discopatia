class CreateMedios < ActiveRecord::Migration
  def self.up
    create_table :medios do |t|
      t.string :nombre

      t.timestamps
    end
  end

  def self.down
    drop_table :medios
  end
end

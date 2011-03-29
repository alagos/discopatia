class CreateArtistas < ActiveRecord::Migration
  def self.up
    create_table :artistas do |t|
      t.string :nombre

      t.timestamps
    end
  end

  def self.down
    drop_table :artistas
  end
end

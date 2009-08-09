class CreateNovidades < ActiveRecord::Migration
  def self.up
    create_table :novidades do |t|
      t.string :titulo
      t.text :texto
      t.integer :status

      t.timestamps
    end
  end

  def self.down
    drop_table :novidades
  end
end

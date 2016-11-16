class SorceryCore < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :apellido
      t.integer :numero, :limit => 10
      t.integer :tipo_documentp
      t.integer :documento, :limit => 10
      t.string :email,            :null => false
      t.string :crypted_password
      t.string :salt
      t.integer :edad
      t.references :cooperative, index: true, foreign_key: true

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
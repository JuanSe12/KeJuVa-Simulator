class CreateCreditRisks < ActiveRecord::Migration
  def change
    create_table :credit_risks do |t|
      t.integer :salario_basico
      t.integer :gastos
      t.text :entradas_adicionales
      t.integer :personas_acargo
      t.references :cooperative, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

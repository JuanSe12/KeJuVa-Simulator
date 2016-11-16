class CreateCooperatives < ActiveRecord::Migration
  def change
    create_table :cooperatives do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end

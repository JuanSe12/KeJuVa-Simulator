class SampleNameChangeColumnType < ActiveRecord::Migration
  def change
  	change_column :users, :numero, :integer, limit: 10
  end
end

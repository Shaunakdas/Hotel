class CreateStandards < ActiveRecord::Migration
  def change
    create_table :standards do |t|
      t.string :name
      t.integer :standard_number
      t.string :board

      t.timestamps null: false
    end
  end
end

class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.integer :day_number
      t.text :info
      t.references :program, index: true

      t.timestamps
    end
  end
end

class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :name
      t.text :desc
      t.references :admin, index: true

      t.timestamps
    end
  end
end

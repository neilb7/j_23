class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :name
      t.references :admin, index: true

      t.timestamps
    end
  end
end

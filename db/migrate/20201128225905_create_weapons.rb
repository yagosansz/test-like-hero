class CreateWeapons < ActiveRecord::Migration[6.0]
  def change
    create_table :weapons do |t|
      t.string :name
      t.integer :level
      t.text :description
      t.integer :power_base
      t.integer :power_step

      t.timestamps
    end
  end
end

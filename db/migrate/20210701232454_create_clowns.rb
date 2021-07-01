class CreateClowns < ActiveRecord::Migration[6.1]
  def change
    create_table :clowns do |t|
      t.string :name
      t.integer :shoe_size
      t.string :specialty

      t.timestamps
    end
  end
end

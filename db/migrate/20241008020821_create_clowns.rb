class CreateClowns < ActiveRecord::Migration[7.1]
  def change
    create_table :clowns do |t|
      t.string :name

      t.timestamps
    end
  end
end

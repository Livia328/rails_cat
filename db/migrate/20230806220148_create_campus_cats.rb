class CreateCampusCats < ActiveRecord::Migration[7.0]
  def change
    create_table :campus_cats do |t|
      t.string :name
      t.string :species
      t.string :age
      t.string :contact

      t.timestamps
    end
  end
end

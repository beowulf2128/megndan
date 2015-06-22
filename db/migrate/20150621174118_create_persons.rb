class CreatePersons < ActiveRecord::Migration
  def change
    create_table :persons do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date   :birthdate
      t.boolean :gender

      t.timestamps null: false
    end
  end
end

class CreateGijoes < ActiveRecord::Migration
  def change
    create_table :gijoes do |t|
      t.string :name
      t.string :year
      t.string :yojoe_url
      t.string :condition

      t.timestamps null: false
    end
  end
end

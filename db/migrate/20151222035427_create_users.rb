class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :second_name
      t.string :last_name, null: false
      t.date :birthdate, null: false
      t.string :address, null: false
      t.string :zipcode
      t.string :administrative_area_level_3
      t.string :administrative_area_level_2
      t.string :administrative_area_level_1, null: false
      t.string :country, null: false
      t.string :national_id, null: false
      t.string :phone, null: false
      t.string :email, null: false
      t.string :linkedin
      t.string :github
      t.text :description, null: false
      t.timestamps null: false
    end
  end
end

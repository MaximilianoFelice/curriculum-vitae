class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :level, null: false
      t.string :title, null: false
      t.string :description
      t.timestamps null: false
    end
  end
end

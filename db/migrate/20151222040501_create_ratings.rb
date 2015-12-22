class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :level
      t.string :title
      t.string :description
      t.timestamps null: false
    end
  end
end

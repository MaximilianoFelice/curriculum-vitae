class CreateExpertiseEntries < ActiveRecord::Migration
  def change
    create_table :expertise_entries do |t|
      t.string :label, null: false
      t.belongs_to :rating, null: false, index: true
      t.timestamps null: false
    end
  end
end

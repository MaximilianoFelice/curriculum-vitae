class CreateTimelineEntries < ActiveRecord::Migration
  def change
    create_table :timeline_entries do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.date :from
      t.date :to
      t.integer :year
      t.string :category, null: false
      t.timestamps null: false
    end
  end
end

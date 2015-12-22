class AddCategoryToExpertiseEntries < ActiveRecord::Migration
  def change
    add_column :expertise_entries, :category, :string, nullable: false
  end
end

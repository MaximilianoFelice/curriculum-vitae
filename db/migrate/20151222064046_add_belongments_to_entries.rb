class AddBelongmentsToEntries < ActiveRecord::Migration
  def change
    add_reference :timeline_entries, :user, nullable: false
    add_reference :expertise_entries, :user, nullable: false
  end
end

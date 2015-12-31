class CreateCategories < ActiveRecord::Migration
  def self.up
    get_categories = ->(klass){klass.all.map{ |instance| [instance.id, instance.read_attribute(:category)] }}
    timeline_categories = get_categories.call(TimelineEntry)
    expertise_categories = get_categories.call(ExpertiseEntry)

    remove_column :timeline_entries, :category
    remove_column :expertise_entries, :category


    create_table :categories do |t|
      t.string :picture
      t.string :title, nullable: false
      t.string :category_type, nullable: false
    end
    add_reference :timeline_entries, :category
    add_reference :expertise_entries, :category


    timeline_categories.group_by(&:second).each do |title, ids|
      new_cat = Category.create(title: title, category_type: TimelineEntry.to_s)
      ids.map(&:first).each{ |id| tl = TimelineEntry.find(id); tl.category = new_cat; tl.save! }
    end

    expertise_categories.group_by(&:second).each do |title, ids|
      new_cat = Category.create(title: title, category_type: ExpertiseEntry.to_s)
      ids.map(&:first).each{ |id| tl = ExpertiseEntry.find(id); tl.category = new_cat; tl.save! }
    end
  end

  def self.down
    timeline_categories = TimelineEntry.joins(:category).map{ |c| [c.id, c.category.title] }
    expertise_categories = ExpertiseEntry.joins(:category).map{ |c| [c.id, c.category.title] }

    remove_column :timeline_entries, :category_id
    remove_column :expertise_entries, :category_id

    add_column :timeline_entries, :category, :string
    add_column :expertise_entries, :category, :string

    timeline_categories.each do |id, title|
      tl = TimelineEntry.find(id)
      tl.send(:write_attribute, :category, title)
      tl.save(validate: false)
    end

    expertise_categories.each do |id, title|
      tl = ExpertiseEntry.find(id)
      tl.send(:write_attribute, :category, title)
      tl.save(validate: false)
    end

    drop_table :categories
  end
end

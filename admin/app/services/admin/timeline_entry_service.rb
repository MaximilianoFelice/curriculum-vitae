module Admin
  class TimelineEntryService
    include Godmin::Resources::ResourceService

    attrs_for_index :user, :title, :content, :from, :to, :year, :category
    attrs_for_show :user, :title, :content, :from, :to, :year, :category
    attrs_for_form :user, :title, :content, :from, :to, :year, :category
  end
end

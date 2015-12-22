module Admin
  class ExpertiseEntryService
    include Godmin::Resources::ResourceService

    attrs_for_index :user, :label, :category, :rating
    attrs_for_show :user, :label, :category, :rating
    attrs_for_form :user, :label, :category, :rating
  end
end

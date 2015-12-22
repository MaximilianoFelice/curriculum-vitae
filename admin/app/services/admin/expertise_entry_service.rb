module Admin
  class ExpertiseEntryService
    include Godmin::Resources::ResourceService

    attrs_for_index :label, :category, :rating
    attrs_for_show :label, :category, :rating
    attrs_for_form :label, :category, :rating
  end
end

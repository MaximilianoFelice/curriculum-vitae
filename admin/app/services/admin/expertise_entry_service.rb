module Admin
  class ExpertiseEntryService
    include Godmin::Resources::ResourceService

    attrs_for_index :label, :rating
    attrs_for_show :label, :rating
    attrs_for_form :label, :rating
  end
end

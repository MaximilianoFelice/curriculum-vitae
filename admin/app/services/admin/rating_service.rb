module Admin
  class RatingService
    include Godmin::Resources::ResourceService

    attrs_for_index :level, :title, :description
    attrs_for_show :level, :title, :description
    attrs_for_form :level, :title, :description
  end
end

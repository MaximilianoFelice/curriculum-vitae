module Admin
  class CategoryService
    include Godmin::Resources::ResourceService

    attrs_for_index :picture, :title, :category_type
    attrs_for_show :picture, :title, :category_type
    attrs_for_form :picture, :title, :category_type
  end
end

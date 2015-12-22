module Admin
  class UserService
    include Godmin::Resources::ResourceService

    attrs = :profile_picture, :first_name, :second_name, :last_name, :birthdate, :address, :zipcode, :administrative_area_level_3, :administrative_area_level_2, :administrative_area_level_1, :country, :national_id, :phone, :email, :linkedin, :github, :description
    attrs_for_index *attrs
    attrs_for_show *attrs
    attrs_for_form *attrs
  end
end

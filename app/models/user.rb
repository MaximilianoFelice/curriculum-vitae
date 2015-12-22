class User < ActiveRecord::Base
  #
  # => Validations
  #
  validates :first_name, :last_name, :birthdate, :address, :administrative_area_level_1, :country, :national_id, :phone, :email, :description, presence: true
end

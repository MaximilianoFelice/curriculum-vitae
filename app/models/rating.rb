class Rating < ActiveRecord::Base
  #
  # => Validations
  #
  validates :level, :title, :description, presence: true
end

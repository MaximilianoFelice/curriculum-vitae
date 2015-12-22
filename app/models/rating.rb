class Rating < ActiveRecord::Base
  #
  # => Validations
  #
  validates :level, :title, presence: true
end

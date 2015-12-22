class ExpertiseEntry < ActiveRecord::Base
  #
  # => Validations
  #
  validates :label, presence: true

  #
  # => Associations
  #
  belongs_to :rating
end

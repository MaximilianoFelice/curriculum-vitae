class ExpertiseEntry < ActiveRecord::Base
  #
  # => Validations
  #
  validates :label, :category, presence: true

  #
  # => Associations
  #
  belongs_to :rating

  def to_s
    label
  end
end

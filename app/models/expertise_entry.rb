class ExpertiseEntry < ActiveRecord::Base
  #
  # => Validations
  #
  validates :label, :category, :user, presence: true

  #
  # => Associations
  #
  belongs_to :rating
  belongs_to :user
  belongs_to :category, ->{ where(category_type: 'ExpertiseEntry') }

  def to_s
    label
  end
end

class Rating < ActiveRecord::Base
  #
  # => Validations
  #
  validates :level, :title, presence: true

  def to_s
    title
  end
end

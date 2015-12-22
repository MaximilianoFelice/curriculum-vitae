class TimelineEntry < ActiveRecord::Base
  #
  # => Validations
  #
  validates :title, :content, :category, :user, presence: true
  validate :range_xor_year

  #
  # => Associations
  #
  belongs_to :user
  
  private

  def range_xor_year
    unless to.blank? ^ year.blank?
      errors.add(:base, "Specify a year or a range, not both")
    end
  end
end

class TimelineEntry < ActiveRecord::Base
  #
  # => Validations
  #
  validates :title, :content, :category, presence: true
  validate :range_xor_year

  private

  def range_xor_year
    unless to.blank? ^ year.blank?
      errors.add(:base, "Specify a year or a range, not both")
    end
  end
end

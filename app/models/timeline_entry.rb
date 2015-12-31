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
  belongs_to :category, ->{ where(category_type: 'TimelineEntry') }


  def orderable_criteria
    return year if year.present?
    return to.year if to.present?
    return from.year if from.present?
  end
  
  private

  def range_xor_year
    unless from.blank? ^ year.blank?
      errors.add(:base, "Specify a year or a range, not both")
    end
  end
end

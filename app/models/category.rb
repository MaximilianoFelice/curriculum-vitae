class Category < ActiveRecord::Base
  #
  # => Validations
  #
  validates :title, :category_type, presence: true
  validate :type_validity

  #
  # => Relations
  #
  has_many :expertise_entries
  has_many :timeline_entries

  #
  # => Images
  #
  mount_uploader :picture, AvatarUploader

  def self.types
    ["TimelineEntry", "ExpertiseEntry"]
  end

  def type_validity
    return if valid_type?
    self.errors.add(:category_type, "Type is invalid. Must be one of #{self.class.types.joins(', ')}")
  end

  def valid_type?
    self.class.types.include? self.category_type.to_s
  end

  def to_s
    self.title
  end
end

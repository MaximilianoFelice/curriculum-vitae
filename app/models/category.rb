class Category < ActiveRecord::Base
  #
  # => Validations
  #
  validates :title, :category_type, presence: true

  #
  # => Relations
  #
  has_many :entries

  #
  # => Images
  #
  mount_uploader :picture, AvatarUploader

  def to_s
    "#{self.title} - #{self.category_type}"
  end
end

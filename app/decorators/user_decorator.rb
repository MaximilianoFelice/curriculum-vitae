class UserDecorator < Draper::Decorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

  def full_name
    self.to_s
  end

  def age
    now = Time.now.utc
    age = now.year - self.birthdate.year - (self.birthdate.to_time.change(:year => now.year) > now ? 1 : 0)
    I18n.t('generic.age', count: age)
  end

  def full_address
    return "#{self.address}, CP: #{zipcode}" unless zipcode
    address
  end

  def full_localization
    [1, 2, 3].map{ |n| self.send("administrative_area_level_#{n}".to_sym) }.join(', ') + '.'
  end

  def present_phone
    self.phone
  end

  def present_id
    I18n.t('user.present_id', id: self.national_id)
  end
end

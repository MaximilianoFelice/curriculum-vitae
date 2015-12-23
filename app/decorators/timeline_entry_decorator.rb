class TimelineEntryDecorator < Draper::Decorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

  def date_range
    if self.year.present?
      self.year
    elsif self.to.present?
      I18n.t('timeline.date_range.with_limit', lower: from.year, upper: to.year)
    else
      I18n.t('timeline.date_range.without_limit', year: from.year)
    end
  end
end

module ApplicationHelper
  def admin_controller? params
    params[:controller].split('/').first == "admin"
  end
  def filter_params ary, element
    if ary
      ary = ary.split(',')
      unless ary.delete(element)
        ary = (ary.split(',') << element).uniq
      end
      ary = ary.join(',')
    else
      ary = element
    end
    { categories: ary} if ary.present?
  end

  def disabled_filter? ary, filter
    unless ary.present? && ary.split(',').include?(filter)
      '-disabled'
    else
      ''
    end
  end
end
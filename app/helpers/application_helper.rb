module ApplicationHelper
  def bootstrap_class_for(flash_type)
    case flash_type
    when 'notice' then 'info'
    when 'success' then 'success'
    when 'error' then 'danger'
    when 'alert' then 'warning'
    else flash_type.to_s
    end
  end
end

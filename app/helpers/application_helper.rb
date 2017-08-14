module ApplicationHelper

  def title(tar_title = '' )
    base_title = "Ruby on Rails Tutorial Sample App"
    if tar_title == nil
      base_title
    else
      final = "#{tar_title} | #{base_title}"
      final
    end
  end






end

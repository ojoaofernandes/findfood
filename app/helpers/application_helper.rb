module ApplicationHelper

  def nav_link description, path
    active = current_page?(path) ? 'active' : ''

    content_tag :li, class: active do
      link_to description, path
    end
  end

end

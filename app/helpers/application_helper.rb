module ApplicationHelper

  def nav_link description, path
    active = current_page?(path) ? 'active' : ''

    content_tag :li, class: active do
      link_to description, path
    end
  end

  def title title
    content_tag :div, class: 'page-header' do
      content_tag :h2 do
        title
      end
    end
  end

end

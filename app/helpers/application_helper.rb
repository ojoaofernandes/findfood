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

  def success_link_to text, href
    content_tag :a, class: 'btn btn-success', href: href do
      text
    end
  end

  def default_link_to text, href
    content_tag :a, class: 'btn btn-default', href: href do
      text
    end
  end

  def success_form_submit form
    form.submit nil, class: "btn btn-success"
  end

end

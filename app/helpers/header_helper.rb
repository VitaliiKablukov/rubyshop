module HeaderHelper
  def current_page_class(path)
current_page?(path)? "nav-link px-2 link-secondary" : "nav-link px-2 link-body-emphasis"
  end
end

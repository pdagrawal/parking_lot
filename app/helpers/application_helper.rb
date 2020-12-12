module ApplicationHelper
  def nav_class(links)
    navigation_class = ''
    links.each do |link|
      recognized = Rails.application.routes.recognize_path(link)
      if recognized[:controller] == params[:controller] && recognized[:action] == params[:action]
        navigation_class += ' active'
      else
        navigation_class += ''
      end
    end
    navigation_class
  end

  def page_title
    @page_title || 'Binaryon'
  end

  def page_description
    @page_description || 'This is a solution provider startup. Checkout our youtube video downloader.'
  end

  def page_keywords
    @page_keywords || 'Binaryon, Binaryon Website, youtube, youtube video, youtube video downloader'
  end
end

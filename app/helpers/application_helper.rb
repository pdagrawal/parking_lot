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
    @page_title || 'Parking Lot'
  end

  def page_description
    @page_description || 'This is a solution to solve the parking problems.'
  end

  def page_keywords
    @page_keywords || 'Parking Lot, Parking Lot Website, Parking Spots'
  end
end

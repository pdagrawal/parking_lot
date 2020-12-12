# frozen_string_literal: true

class HomeController < ApplicationController
  layout 'landing'

  def index
    @page_title = 'Binaryon'
    @page_description = 'This is a solution provider startup. For now you can use our youtube video downloader.'
    @page_keywords = 'Binaryon, Binaryon Website, youtube, youtube video, youtube video downloader'
    @query = ContactQuery.new
  end
end

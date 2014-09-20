# encoding: UTF-8
class StaticController < ApplicationController
  def home
    @page = Page.all
    
  end
  def googlebc5f5c16062b24b0
  end
  def sitemap
    respond_to do |format|
      format.xml
    end
  end
end

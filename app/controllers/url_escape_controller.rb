class UrlEscapeController < ApplicationController

  def index
    @evil_user_data = "javascript:var a='XSS'; alert(a)"
    @safe_user_data = "http://www.google.com"
  end

end

class SanitizeController < ApplicationController

  def index
    @evil_user_data = "<div><td><img src='' onerror=alert('XSS') /></td></div>"
  end

end

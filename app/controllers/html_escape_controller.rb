class HtmlEscapeController < ApplicationController

  def index
    @evil_user_data = '<script>alert("see you")</script>'
  end

end

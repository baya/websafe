class JsEscapeController < ApplicationController

  def index
    @evil_user_data = "\";alert(\"XSS\");//"
  end

end

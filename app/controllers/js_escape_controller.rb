class JsEscapeController < ApplicationController

  def index
    @evil_user_data = "\";alert(\"XSS\");//"
    @evil_user_data2 = "alert('XSS')"
  end

end

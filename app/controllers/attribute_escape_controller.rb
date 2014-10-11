class AttributeEscapeController < ApplicationController

  def index
    @evil_user_data = "\"><script>alert(\"see you\")</script><\""
    @evil_user_data_2 = "\"\"><script>alert(\"see you\")</script><\"\""
  end

end

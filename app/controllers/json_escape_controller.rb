class JsonEscapeController < ApplicationController

  def index
    @evil_user_data = "{\"Message\":\"No HTTP resource was found that matches the request URI 'dev.net.ie/api/pay/.html?HouseNumber=9&AddressLine
   =The+Gardens<script>alert('XSS')</script>&AddressLine2=foxlodge+woods&TownName=Meath'.\",\"MessageDetail\":\"No type was found
   that matches the controller named 'pay'.\"}"

    # render text: @evil_user_data
    render json: @evil_user_data.to_json
  end

end

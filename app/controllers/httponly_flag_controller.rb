class HttponlyFlagController < ApplicationController

  def true
    cookies["user_name"] = { value: "david", httponly: true }
  end

  def false
    cookies["admin_name"] = { value: "jim", httponly: false }
  end

end

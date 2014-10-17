class Csp::MiscController < ApplicationController

  def default_script_src
    set_csp "default-src 'self'; script-src 'unsafe-inline'"
  end

  private

  def set_csp csp_str
    response.headers['Content-Security-Policy'] = csp_str << "; report-uri /csp_report"
  end

end

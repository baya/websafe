class Csp::DefaultSrcController < ApplicationController

  def self
    set_csp "default-src 'self'"
  end

  private

  def set_csp csp_str
    response.headers['Content-Security-Policy'] = csp_str << "; report-uri /csp_report"
  end


end

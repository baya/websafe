class Csp::ScriptSrcController < ApplicationController

  def none
    set_csp "script-src 'none'"
  end

  private

  def set_csp csp_str
    response.headers['Content-Security-Policy'] = csp_str << "; report-uri /csp_report"
  end

end

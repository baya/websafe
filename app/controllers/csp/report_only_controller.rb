class Csp::ReportOnlyController < ApplicationController

  def index
    set_csp_report_only "script-src 'self'"
  end

  private

  def set_csp_report_only csp_str
    response.headers['Content-Security-Policy-Report-Only'] = csp_str << "; report-uri /csp_report"
  end

end

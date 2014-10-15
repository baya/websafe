class CspReportController < ApplicationController

  protect_from_forgery

  def create
    Rails.logger.info "received csp report: #{request.POST}"

    render text: 'ok'
  end

end

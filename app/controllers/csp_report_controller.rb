class CspReportController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def create
    Rails.logger.info "received csp report: #{pp JSON.parse(request.raw_post)}"

    render text: 'ok'
  end

end

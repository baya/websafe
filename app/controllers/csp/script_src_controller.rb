class Csp::ScriptSrcController < ApplicationController

  def none
    set_csp "script-src 'none'"
  end

  def self
    set_csp "script-src 'self'"
  end

  def self_ext
    set_csp "script-src 'self' http://example.com *.google.com"
  end

  def self_nonce
    @rand = SecureRandom.hex
    set_csp "script-src 'self' 'nonce-#{@rand}'"
  end

  def unsafe_inline
    set_csp "script-src 'unsafe-inline'"
  end

  def block_unsafe_eval
    set_csp "script-src 'self' 'unsafe-inline'"
  end

  def unsafe_eval
    set_csp "script-src 'self' 'unsafe-inline' 'unsafe-eval'"
  end

  private

  def set_csp csp_str
    response.headers['Content-Security-Policy'] = csp_str << "; report-uri /csp_report"
  end

end

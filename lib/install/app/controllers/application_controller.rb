class ApplicationController < ActionController::Base

  rescue_from StandardError do |e|
  end

  rescue_from ActiveRecord::RecordNotFound do
  end

  rescue_from ActionController::BadRequest do |e|
  end

  rescue_from ActionController::InvalidAuthenticityToken do |e|
  end

  private

  def ajax_redirect_to(path)
    render(js: "window.location = '#{path}'")
  end

  def render_result(hash, options = {})
    render options.merge!(json: hash)
  end

  def ajax_reload
    render(js: 'window.location.reload()')
  end

end

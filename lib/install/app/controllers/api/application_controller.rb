module Api
  class ApplicationController < ActionController::API
    include ErrorHandler

    private

    def render_result(hash, options = {})
      render options.merge!(json: hash)
    end
  end
end

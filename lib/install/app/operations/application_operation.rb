# frozen_string_literal: true

class ApplicationOperation
  attr_accessor :params, :current_actor, :form, :current_auth

  def initialize(params, current_actor = nil, current_auth = nil)
    @params        = params
    @current_actor = current_actor
    @current_auth  = current_auth
  end
end

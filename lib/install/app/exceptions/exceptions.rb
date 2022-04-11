module Exceptions
  # memo: codeはScala APIに合わせている
  # https://github.com/onevisa-inc/tkg-backend/blob/dd29ddc491511e049ed896a78db99a0fbfa39f04/modules/http/src/main/scala/http/presenters/error/APIError.scala
  BAD_REQUEST           = { status: 400, code: 'bad request' }.freeze
  UNAUTHORIZED          = { status: 401, code: 'unauthorized' }.freeze
  FORBIDDEN             = { status: 403, code: 'forbidden' }.freeze
  NOT_FOUND             = { status: 404, code: 'not found' }.freeze
  CONFLICT              = { status: 409, code: 'conflict' }.freeze
  UNPROCESSABLE_ENTITY  = { status: 422, code: 'unprocessable_entity' }.freeze
  INTERNAL_SERVER_ERROR = { status: 500, code: 'internal_server_error' }.freeze
  NOT_IMPLEMENTED       = { status: 501, code: 'not implemented' }.freeze
  SERVICE_UNAVAILABLE   = { status: 503, code: 'service unavailable' }.freeze

  def status_code_according_to(exception)
    case exception
    when Exceptions::BadRequest, Exceptions::ResourceInvalid, ActionController::BadRequest,
      I18n::InvalidLocale
      Exceptions::BAD_REQUEST
    when SecurityError, Exceptions::Unauthorized
      Exceptions::UNAUTHORIZED
    when Exceptions::Forbidden, ActionController::InvalidAuthenticityToken
      Exceptions::FORBIDDEN
    when ActiveRecord::RecordNotFound
      Exceptions::NOT_FOUND
    when ActiveRecord::RecordNotUnique
      Exceptions::CONFLICT
    when Exceptions::UnprocessableEntity
      Exceptions::UNPROCESSABLE_ENTITY
    when Exceptions::NotImplemented
      Exceptions::NOT_IMPLEMENTED
    else
      Exceptions::INTERNAL_SERVER_ERROR
    end
  end

  class BadRequest < StandardError; end # 400
  class ResourceInvalid < StandardError; end # 400
  class Unauthorized < StandardError; end # 401
  class Forbidden < StandardError; end # 403
  class NotFound < StandardError; end # 404
  class ResourceNotFound < StandardError; end # 404
  class Conflict < StandardError; end # 409
  class UnprocessableEntity < ActiveRecord::RecordInvalid; end # 422
  class InternalServerError < StandardError; end # 500
  class NotImplemented < StandardError; end # 503
end

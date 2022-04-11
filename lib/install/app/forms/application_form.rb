# frozen_string_literal: true

class ApplicationForm
  include ActiveModel::Model
  include ActiveModel::Attributes
  extend ActiveModel::Translation
  include ActiveModel::Validations::Callbacks

  def valid!
    raise Exceptions::UnprocessableEntity.new, errors.messages.to_json unless valid?
  end

  def initialize(attributes = {})
    # Define dynamic attributes
    self.class.attribute_names.each do |attr|
      self.class.attribute attr.to_sym
    end
    super attributes
  end

  def self.attribute_names
    []
  end
end

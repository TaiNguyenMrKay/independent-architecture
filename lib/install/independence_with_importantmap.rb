say "Create controllers directory"
copy_file "#{__dir__}/app/javascript/controllers/application_controller.rb",
  "app/controllers/application_controller.rb"
empty_directory "app/controllers/api"
copy_file "#{__dir__}/ap/controllers/api/application_controller.rb",
  "app/controllers/api/application_controller.rb"

say "Create decorators directory"
empty_directory "app/decorators"
copy_file "#{__dir__}/app/decorators/application_decorator.rb",
  "app/decorators/application_decorator.rb"

say "Create exceptions directory"
empty_directory "app/exceptions"
copy_file "#{__dir__}/app/exceptions/exceptions.rb",
  "app/exceptions/exceptions.rb"

say "Create forms directory"
empty_directory "app/forms"
copy_file "#{__dir__}/app/forms/application_form.rb",
  "app/forms/application_form.rb"

say "Create operations directory"
empty_directory "app/operations"
copy_file "#{__dir__}/app/operations/application_operation.rb",
  "app/operations/application_operation.rb"

say "Create serializers directory"
empty_directory "app/serializers"
copy_file "#{__dir__}/app/serializers/application_serializer.rb",
  "app/serializers/application_serializer.rb"

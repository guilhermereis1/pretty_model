# frozen_string_literal: true

class ConcernGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('templates', __dir__)

  argument :concerns, type: :array, default: [], banner: "associations, validations, callbacks, scopes, enums, custom_methods"

  def create_concern_files
    concerns = %w(associations validations callbacks scopes enums custom_methods)

    concerns.each do |concern|
      template "concern.rb", "app/models/concerns/#{file_name}_concern/#{concern}.rb", context: binding
    end
  end
end
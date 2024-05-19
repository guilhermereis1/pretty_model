# frozen_string_literal: true

class ConcernGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('templates', __dir__)

  CONCERN_TYPES = %w(associations validations callbacks scopes enums custom_methods).freeze

  argument :concerns, type: :array, default: [], banner: "associations validations callbacks scopes enums custom_methods"
  argument :custom_concern, type: :string, default: "", banner: "Custom concern name"

  def create_concern_files
    selected_concerns = concerns.presence || CONCERN_TYPES

    selected_concerns.each do |concern|
      template "concern.rb", "app/models/concerns/#{file_name}_concern/#{concern}.rb", context: binding
    end

    generate_custom_concern(custom_concern) if custom_concern.present?
  end

  private

  def generate_custom_concern(name)
    template "custom_concern.rb", "app/models/concerns/#{file_name}_concern/#{name}.rb", context: binding
  end
end
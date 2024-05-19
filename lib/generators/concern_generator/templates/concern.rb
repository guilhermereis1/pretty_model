# frozen_string_literal: true
# include <%= class_name %>Concern::<%= concern.camelize %>

module <%= class_name %>Concern
  module <%= concern.camelize %>
    extend ActiveSupport::Concern

    included do
    end
  end
end
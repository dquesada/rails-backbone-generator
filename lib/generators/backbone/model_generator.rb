require 'rails/generators'

module Backbone
  class ModelGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)
    desc "Creates a BackboneModel, Jasmine tests/factory"
    argument :raw_model_name, required: true, type: 'string'
    
    def parse_and_ensure_namespace
      # Namespace::Object
      
    end
    
    
    def model_name(classify=false)
      style = classify ?  :classify : :underscore
      raw_model_name.pluralize.send(style)
    end
    
  end
end
# Require core library
require 'middleman-core'

# Extension namespace
module Middleman
  class IEPABExtension < ::Middleman::Extension
    self.supports_multiple_instances = true

    option :name, nil, 'The name of the pipeline', required: true
    option :command, nil, 'The command to initialize', required: true
    option :source, nil, 'Path to merge into sitemap', required: true
    option :latency, 0.25, 'Latency between refreshes of source'
    option :disable_background_execution, false, "Don't run the command in a separate background thread"

    def initialize(app, config={}, &block)
      super
    end

    def after_configuration
    end

  end
end

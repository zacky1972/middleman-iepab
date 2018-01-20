# Require core library
require 'middleman-core'
require 'middleman-core/extensions/external_pipeline'

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
      @app = app
      @config = config
      @block = block
    end

    def ready(builder)
      ::Middleman::Extensions::ExternalPipeline.new(@app, @config)
    end
  end
end

require "middleman-core"

Middleman::Extensions.register :iepab do
  require "my-extension/extension"
  MyExtension
end

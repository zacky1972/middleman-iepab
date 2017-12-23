require "middleman-core"

Middleman::Extensions.register :middleman-iepab do
  require "my-extension/extension"
  MyExtension
end

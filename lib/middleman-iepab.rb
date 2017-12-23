require "middleman-core"

Middleman::Extensions.register :iepab do
  require "middleman-iepab/extension"
  Middleman::IEPABExtension
end

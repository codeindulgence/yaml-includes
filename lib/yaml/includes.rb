require 'yaml'
require 'active_support/core_ext/module/aliasing'

module YAML
  module Includes
    def load_file_with_includes(filename)
      # Magic happens here
    end
  end

  class << self
    prepend Includes
    alias_method_chain :load_file, :includes
  end
end

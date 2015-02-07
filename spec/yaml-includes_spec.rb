require 'spec_helper'

describe YAML::Includes do
  context 'when the gem is loaded' do
    it 'defines YAML::load_file_with_includes' do
      expect(YAML.respond_to?(:load_file_with_includes)).to be true
    end
  end
end

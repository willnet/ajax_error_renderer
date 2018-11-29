require 'test_helper'
require 'generators/ajax_error_renderer/view_generator'

class AjaxErrorRenderer::ViewGeneratorTest < Rails::Generators::TestCase
  tests AjaxErrorRenderer::ViewGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  test "generator runs without errors" do
    assert_nothing_raised do
      run_generator
    end
  end
end

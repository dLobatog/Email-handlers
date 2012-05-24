require 'test_helper'

class NavigationTest < ActiveSupport::IntegrationCase
  test '.rb template handler' do
    visit '/handlers/index'
    expected = 'This is my first <b>template handler</b>!'
    assert_match expected, page.body
  end
end

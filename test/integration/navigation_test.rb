require 'test_helper'

class NavigationTest < ActiveSupport::IntegrationCase
  test '.rb template handler' do
    visit '/handlers/index'
    expected = 'This is my first<b>template handler</b>!'
    assert_match expected, page.body
  end

  test '.string template handler' do
    visit '/handlers/show'
    expected = 'Congratulations! You just created another template handler!'
    assert_match expected, page.body
  end

  test '.md template handler' do
    visit '/handlers/rdiscount'
    expected = '<p>RDiscount is <em>cool</em> and <strong>fast</strong>!</p>'
    assert_match expected, page.body
  end

  test ".merb template handler" do
    visit '/handlers/merb'
    expected = "<p>MERB template handler is <strong>cool and fast</strong>!</p>"
    assert_match expected, page.body.strip
  end
  
end

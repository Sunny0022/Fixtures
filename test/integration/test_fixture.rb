require 'test_helper'
require 'capybara/cucumber'

class PostFlowTest < Capybara::Rails::TestCase
  def setup
    @one = posts :one
    @two = posts :two
  end

  test 'post index' do
    fixtures :posts
    visit posts_path

    assert page.has_content?(@one.title)
    assert page.has_content?(@two.title)
  end
end

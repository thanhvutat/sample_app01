require 'test_helper'

	def setup
    	@base_title = "Ruby on Rails Tutorial Sample App"
  	end

class StaticPagesControllerTest < ActionController::TestCase
  	test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
    end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

end

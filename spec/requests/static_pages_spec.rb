require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => 'KO-OP Mode | Home')
    end
  end

end

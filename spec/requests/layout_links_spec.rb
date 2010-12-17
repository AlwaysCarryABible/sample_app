require 'spec_helper'

describe "LayoutLinks" do
  describe "GET /" do
    it "should have the index at '/'" do
      get '/'
      response.should have_selector('title', :content => 'Home')
    end
  end
  describe "GET /contact" do
    it "should have the contact page at '/contact'" do
      get '/contact'
      response.should have_selector('title', :content => 'Contact')
    end
  end
  describe "GET /about" do
    it "should have the about page at '/about'" do
      get '/about'
      response.should have_selector('title', :content => 'About')
    end
  end
  describe "GET /help" do
    it "should have the help page at '/help'" do
      get '/help'
      response.should have_selector('title', :content => 'Help')
    end
  end
  describe "GET /signup" do
    it "should have the Sign Up Page at '/signup'" do
      get '/signup'
      response.should have_selector('title', :content => 'Sign up')
    end
  end
end

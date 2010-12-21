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
  describe "when not signed in" do
    it "should have a signin link" do
      visit root_path
      response.should have_selector("a", :href => signin_path,
                                          :content => "Sign in")
    end
  end
  describe "when signed in" do
    before(:each) do
      @user = Factory(:user)
      visit signin_path
      fill_in :email,     :with => @user.email
      fill_in :password,  :with => @user.password
      click_button
    end
    it "should have a signout link" do
      visit root_path
      response.should have_selector("a", :href => signout_path,
                                          :content => "Sign out")
    end
    it "should have a profile link"
  end

end

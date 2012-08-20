require 'spec_helper'

describe StaticPagesController do

  #describe "home" do

   # before :each do
    #  controller.stub(:signed_in?).and_return('false')
    #end

    #it "it should have logged in user" do
     # get "home"
#      home.should have_content("static_pages")
      # assigns(:micropost).should be_nil
      # assigns( :feed_items).should be
   # end
  #end
  #describe "home page" do
 # before :each do
  # controller.stub(:signedin?).and_return(true)
  #end
   # it "displays the user's username after successful login" do
    #user = User.create!(name:"jdoe", :email => "jdoe@a.b", :password => "secret", confirm_password:"secret")
    #get "/home"
    #assert_select "form.login" do
     # assert_select "input[name=?]", "username"
      #assert_select "input[name=?]", "password"
      #assert_select "input[type=?]", "submit"
    #end

    #post "/login", :username => "jdoe@a.b", :password => "secret"
    #assert_select ".header .username", :text => "jdoe"
  #end
#end
require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Sample App'" do
      get "home"
      page.should have_selector('h1', text: 'Sample App')
    end

    it "should have the base title" do
      get "home"
      page.should have_selector('title',
                        text: "Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      get "home"
      page.should_not have_selector('title', text: '| Home')
    end
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      get "/help"
      page.should have_selector('h1', text: 'Help')
    end

    it "should have the title 'Help'" do
      get "help"
      page.should have_selector('title',
                        text: "Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do

    it "should have the h1 'About'" do
      get "about"
      page.should have_selector('h1', text: 'About Us')
    end

    it "should have the title 'About Us'" do
      get "about"
      page.should have_selector('title',
                    text: "Ruby on Rails Tutorial Sample App | About Us")
    end
  end

  describe "Contact page" do

    it "should have the h1 'Contact'" do
      get "contact"
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Contact'" do
      get "contact"
      page.should have_selector('title',
                    text: "Ruby on Rails Tutorial Sample App | Contact")
    end
  end
end
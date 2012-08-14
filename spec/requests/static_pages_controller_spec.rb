require 'spec_helper'

describe StaticPagesController do
  describe "home" do
    it "it should show 'static pages'" do
      x = Object.new.extend(SessionsHelper)
      x.stub(signed_in?).and_return(true)
      get "home"
      home.should have_content("static_pages")
    end

    describe "help" do
      it "It should show Help page" do
        get "help"
      end
    end
  end
end

require 'spec_helper'

describe "StaticPages" do
  #describe "GET /static_pages" do
  #  it "works! (now write some real specs)" do
  #    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
  #    get static_pages_index_path
  #    response.status.should be(200)
  #  end
  #end
  let(:title_slug) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
  	it "should have the base title" do
  		visit '/static_pages/home'
  		expect(page).to have_title("#{title_slug}")
  	end

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should not have a custom title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do
  	it "should have the title 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_title("Help | #{title_slug}")
  	end

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
  end

  describe "About page" do
  	it "should have the title 'About Us'" do
  		visit '/static_pages/about'
  		expect(page).to have_title("About Us | #{title_slug}")
  	end

  	it "should have the content 'About Us" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About Us')
  	end
  end

  # Exercise 3.1 from http://ruby.railstutorial.org/chapters/static-pages?version=4.0#code-serve_static_assets_redux
  describe "Contact page" do
    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("Contact | #{title_slug}")
    end

    it "should have the content 'Contact" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end
  end
end
require 'spec_helper'

describe "StaticPages" do
  #describe "GET /static_pages" do
  #  it "works! (now write some real specs)" do
  #    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
  #    get static_pages_index_path
  #    response.status.should be(200)
  #  end
  #end

  subject { page }
  describe "Home page" do
    before { visit root_path }
    
    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title("| Home") }
  end

  describe "Help page" do
    before { visit help_path }
  	
    it { should have_title(full_title('Help')) }
    it { should have_content('Help') }
  end

  describe "About page" do
    before { visit about_path } # translates to '/static_pages/about'
  	
    it { should have_title(full_title("About Us")) }
    it { should have_content("About Us") }
  end

  # Exercise 3.1 from http://ruby.railstutorial.org/chapters/static-pages?version=4.0#code-serve_static_assets_redux
  describe "Contact page" do
    before { visit contact_path } # '/static_pages/contact'
    
    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end
end
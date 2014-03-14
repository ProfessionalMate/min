require 'spec_helper'

describe "StaticPages" do
	describe "Home page" do
		it "should  have h1 'Instruction App'" do
			visit '/static_pages/home'
			page.should have_selector('h1', :text => 'Instruction App')
		end
		it "should have title 'Home'" do
			visit '/static_pages/home'
			page.should have_selector('title', :text => "RoR Instruction App | Home")
		end
	end

	describe "Help page" do
		it "should have h1 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('h1', :text => 'Help')
		end
		it "should have title 'RoR Instruction App | Help'" do
			visit '/static_pages/help'
			page.should have_selector('title', :text => "RoR Instruction App | Help")
		end
	end

	describe "About page" do
		it "it should have h1 'About the Company'" do
			visit '/static_pages/about'
			page.should have_selector('h1', :text => 'About the Company')
		end
		it "should have title 'RoR Instruction App'" do
			visit '/static_pages/about'
			page.should have_selector('title', :text => "RoR Instruction App | About the Company")

		end
	end
end
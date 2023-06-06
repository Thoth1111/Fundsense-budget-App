require 'rails_helper'

RSpec.describe 'Splash', type: :feature do
  describe 'root' do
    before(:all) do
      Capybara.reset_sessions!
    end

    before(:each) do
      visit root_path
    end

    it 'should display the page name' do
      expect(page).to have_content('Fundsense')
    end

    it 'should have a link to log in' do
      expect(page).to have_link('LOG IN')
    end

    it 'should have a link to sign up' do
      expect(page).to have_link('SIGN UP')
    end
  end
end

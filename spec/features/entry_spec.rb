require 'rails_helper'

RSpec.describe 'Entry', type: :feature do
  fixtures :users, :groups, :entries
  describe 'index' do
    before(:all) do
      Capybara.reset_sessions!
    end

    before(:each) do
      visit user_groups_path(users(:two))

      if page.current_path == new_user_session_path
        fill_in 'Email', with: users(:two).email
        fill_in 'Password', with: 'password'
        click_button 'Log in'
        click_link groups(:two).name
      end
    end

    it 'should display the category name' do
      expect(page).to have_content('Sacco')
    end

    it 'should display the group\'s transactions\' totals' do
      expect(page).to have_content('Kshs 10000')
    end

    it 'should display the category\'s transactions' do
      expect(page).to have_content('Stocks')
      expect(page).to have_content('Kshs 10000')
    end

    it 'should have a link to edit a transaction' do
      expect(page).to have_link('Edit')
    end

    it 'should have a link to delete a transaction' do
      expect(page).to have_link('Delete')
    end

    it 'should have a link to add a new transaction' do
      expect(page).to have_link('New transaction')
    end

    it 'should have a link to add a new transaction' do
      expect(page).to have_link('New transaction')
    end

    it 'should open the new transaction page when "New transaction" is clicked' do
      click_link 'New transaction'
      expect(page).to have_current_path(new_user_group_entry_path(users(:two), groups(:two)))
    end

    it 'should open the edit transaction page when "Edit" is clicked' do
      click_link 'Edit'
      expect(page).to have_current_path(edit_user_group_entry_path(users(:two), groups(:two), entries(:two)))
    end
  end
end

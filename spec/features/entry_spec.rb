require 'rails_helper'

RSpec.describe 'Entry', type: :feature do
    fixtures :users, :groups
    describe 'index' do
        before(:all) do
            Capybara.reset_sessions!
        end

        before(:each) do
            visit user_groups_path(users(:user1))
            if page.current_path == new_user_session_path
                fill_in 'Email', with: users(:user1).email
                fill_in 'Password', with: 'password'
                click_button 'Log in'                
            end
            click_link groups(:group1).name
        end

        it 'should display the category name' do
            expect(page).to have_content(groups(:group1).name)
        end

        it 'should have a link to create a new transaction' do
            expect(page).to have_link('New transaction')
        end

        it 'should have a back arrow' do
            expect(page).to have_link('Back')
        end

        it 'should have a single word description' do
            expect(page).to have_content('DETAILS')
        end

        it 'should redirect to the new transaction page when the new transaction link is clicked' do
            click_link 'New transaction'
            expect(page.current_path).to eq(new_user_group_entry_path(users(:user1), groups(:group1)))
        end

        it 'should return to the group index page when the back arrow is clicked' do
            click_link 'Back'
            expect(page.current_path).to eq(user_groups_path(users(:user1)))
        end
    end
end
require 'rails_helper'

RSpec.describe 'Group', type: :feature do
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
        end

        it 'should have a link to create a new category' do
            expect(page).to have_link('New category')
        end

        it 'should have a link to log out' do
            expect(page).to have_link('Log out')
        end

        it 'should redirect to the new category page when the new category link is clicked' do
            click_link 'New category'
            expect(page.current_path).to eq(new_user_group_path(users(:user1)))
        end

        it 'should display the name of a group' do
            expect(page).to have_content(groups(:group1).name)
        end

        it 'should display a delete link for a group' do
            expect(page).to have_link('Delete')
        end

        it 'should show the transaction totals for a group' do
            expect(page).to have_content('Kshs 0')
        end

        it 'should show the date the group was created' do
            expect(page).to have_content(groups(:group1).created_at.strftime('%d %b %Y'))
        end

        it 'should open the group show page when the group name is clicked' do
            click_link groups(:group1).name
            expect(page.current_path).to eq(user_group_entries_path(users(:user1), groups(:group1)))
        end
    end
end

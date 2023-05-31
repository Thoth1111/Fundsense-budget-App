require 'rails_helper'

RSpec.describe 'Group', type: :feature do
    fixtures :users, :groups
    describe 'index' do
        before(:all) do
            Capybara.reset_sessions!
        end

        before(:each) do
            visit user_groups_path(users(:one))

            if page.current_path == new_user_session_path
                fill_in 'Email', with: users(:one).email
                fill_in 'Password', with: 'password'
                click_button 'Log in'
            end
        end

        it 'should display the page name' do
            expect(page).to have_content('Categories')
        end

        it 'should display the user\'s groups' do
            expect(page).to have_content('Groceries')
        end

        it 'should display the user\'s groups\' totals' do
            expect(page).to have_content('Kshs 12000')
        end

        it 'should have a link to add a new group' do
            expect(page).to have_link('New category')
        end

        it 'should have a link to edit a group' do
            expect(page).to have_link('Edit')
        end

        it 'should have a link to delete a group' do
            expect(page).to have_link('Delete')
        end

        it 'should open the new group page when "New Category" is clicked' do
            click_link 'New category'
            expect(page).to have_current_path(new_user_group_path(users(:one)))
        end

        it 'should open the edit group page when "Edit" is clicked' do
            click_link 'Edit'
            expect(page).to have_current_path(edit_user_group_path(users(:one), groups(:one)))
        end

        it 'should open a group\'s transactions page when the group is clicked' do
            click_link groups(:one).name
            expect(page).to have_current_path(user_group_entries_path(users(:one), groups(:one)))
        end
    end
end
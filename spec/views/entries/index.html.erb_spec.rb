# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'entries/index', type: :view do
  before(:each) do
    assign(:entries, [
             Entry.create!(
               name: 'Name',
               amount: 2
             ),
             Entry.create!(
               name: 'Name',
               amount: 2
             )
           ])
  end

  it 'renders a list of entries' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end

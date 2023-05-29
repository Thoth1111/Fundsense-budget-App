# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'entries/edit', type: :view do
  let(:entry) do
    Entry.create!(
      name: 'MyString',
      amount: 1
    )
  end

  before(:each) do
    assign(:entry, entry)
  end

  it 'renders the edit entry form' do
    render

    assert_select 'form[action=?][method=?]', entry_path(entry), 'post' do
      assert_select 'input[name=?]', 'entry[name]'

      assert_select 'input[name=?]', 'entry[amount]'
    end
  end
end

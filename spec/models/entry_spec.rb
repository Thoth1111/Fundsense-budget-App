require 'rails_helper'

RSpec.describe Entry, type: :model do
  describe 'validations' do
    it 'should validate presence of name' do
      entry = Entry.new(name: '')
      expect(entry.valid?).to be false
      expect(entry.errors[:name]).to include("can't be blank")
    end

    it 'should validate presence of amount' do
      entry = Entry.new(amount: '')
      expect(entry.valid?).to be false
      expect(entry.errors[:amount]).to include("can't be blank")
    end
  end

  describe 'associations' do
    it 'should belong to group' do
      entry = Entry.reflect_on_association(:group)
      expect(entry.macro).to eq(:belongs_to)
    end

    it 'should belong to user' do
      entry = Entry.reflect_on_association(:author)
      expect(entry.macro).to eq(:belongs_to)
    end
  end
end

require 'rails_helper'

RSpec.describe Group, type: :model do
  describe 'validations' do
    it 'should validate presence of name' do
      group = Group.new(name: '')
      expect(group.valid?).to be false
      expect(group.errors[:name]).to include("can't be blank")
    end

    it 'should validate presence of icon' do
      group = Group.new(icon: '')
      expect(group.valid?).to be false
      expect(group.errors[:icon]).to include("can't be blank")
    end
  end

  describe 'associations' do
    it 'should belong to user' do
      group = Group.reflect_on_association(:user)
      expect(group.macro).to eq(:belongs_to)
    end
  end
end

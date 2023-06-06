require 'rails_helper'

RSpec.describe Group, type: :model do
  fixtures :users
  describe 'validations' do
    it 'should validate presence of name' do
      group = Group.new(name: '')
      expect(group.valid?).to be false
      expect(group.errors[:name]).to include("can't be blank")
    end

    it 'should validate presence of icon' do
      user = users(:user1)
      group = user.groups.new(name: 'Thoth')
      expect(group).not_to be_valid
      expect(group.errors[:icon]).to include("can't be blank")

      file_path = Rails.root.join('spec', 'fixtures', 'files', 'x.svg')
      group.icon.attach(io: File.open(file_path), filename: 'x.svg')
      expect(group).to be_valid
    end
  end

  describe 'associations' do
    it 'should belong to a user' do
      group = Group.reflect_on_association(:user)
      expect(group.macro).to eq(:belongs_to)
    end
  end
end

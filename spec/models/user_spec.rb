require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it 'should validate presence of name' do
      user = User.new(name: '')
      expect(user.valid?).to be false
      expect(user.errors[:name]).to include("can't be blank")
    end

    it 'should validate presence of email' do
      user = User.new(email: '')
      expect(user.valid?).to be false
      expect(user.errors[:email]).to include("can't be blank")
    end

    it 'should validate presence of password' do
      user = User.new(password: '')
      expect(user.valid?).to be false
      expect(user.errors[:password]).to include("can't be blank")
    end
  end
end

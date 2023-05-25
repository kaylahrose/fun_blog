require 'rails_helper'

RSpec.describe User do
  describe 'relationships' do
    it { should have_many(:events) }
    it { should have_many(:statuses) }
    it { should have_many(:comments) }
  end
  
  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
    it { should validate_presence_of(:password_digest) }
    it { should validate_presence_of(:username) }
    it { should validate_uniqueness_of(:username) }
  end
end

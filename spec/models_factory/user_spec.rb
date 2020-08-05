require 'rails_helper'

RSpec.describe User, type: :model do
  subject {build(:user)}

  it 'is valid with proper attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = ''
    expect(subject).not_to be_valid
  end
  it 'is not valid without and email' do
    subject.email = ''
    expect(subject).not_to be_valid
  end
  it 'is not valid with incorrect email' do
    subject.email = '123@'
    expect(subject).not_to be_valid
  end
end

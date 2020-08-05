require 'rails_helper'

RSpec.describe Album, type: :model do
   subject {build(:album)}

  it 'is valid without a title' do
    subject.title = ''
    expect(subject).not_to be_valid
  end

  it 'is not valid with a title longer than 100 symbols' do
    subject.title = 'a' * 101
    expect(subject).not_to be_valid
  end

  it 'with proper data' do
    subject.title = 'a' * 50
    expect(subject).to be_valid
  end
end

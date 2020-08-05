require 'rails_helper'

RSpec.describe Album, type: :model do
  subject {build(:album)}
  it 'is valid without a title' do
    subject.title = ''
    expect(subject).not_to be_valid
  end
  it 'is valid with proper title' do
    subject.title = 'a' * 101
    expect(subject).not_to be_valid
  end
  it 'with proper data' do
    expect(subject).to be_valid
  end

end

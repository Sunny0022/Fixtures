require 'rails_helper'

RSpec.describe Album, type: :model do
  fixtures :albums
  subject {Album.new}
  it 'is valid without a title' do
    expect(subject).not_to be_valid
  end
  it 'is valid with proper title' do
    subject.title = 'a' * 101
    expect(subject).not_to be_valid
  end
  it 'with proper data' do
    expect(albums(:the_game)).to be_valid
  end

end

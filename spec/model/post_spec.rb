require 'rails_helper'

RSpec.describe Post, type: :model do
  user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
  subject { Post.new(title: 'Title', text: 'Body', user_id: 1, commentscounter: 1) }
  before { subject.save }

  context 'validations' do
    it 'Comments_counter should be integer' do
      expect(subject).to_not be_valid
    end
    it 'Title should be present' do
      subject.title = nil
      expect(subject).to_not be_valid
    end

    it 'Comments_counter should be present' do
      subject.commentscounter = nil
      expect(subject).to_not be_valid
    end

    it 'Increases the comments' do
      counter = User.find(1).postscounter
      subject.update_post_counter
      expect(User.find(1).postscounter).to eq(counter + 1)
    end
  end
end

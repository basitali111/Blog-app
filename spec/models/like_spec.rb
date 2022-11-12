require 'rails_helper'

RSpec.describe Like, type: :model do
  # tests go here
  user_one = User.new(name: 'basit', photo: 'link/goes/here', bio: 'this is my personal bios')
  post = Post.new(title: 'My first post in ruby on rails', text: 'Body text of the post', author_id: user_one.id)
  like = Like.new(author_id: user_one.id, post_id: post.id)

  it 'like count to increase by one' do
    post.likes_counter = -1
    expect(post).to_not be_valid
  end
end
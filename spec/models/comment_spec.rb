require 'rails_helper'

RSpec.describe Post, type: :model do
  # tests go here
  user_one = User.new(name: 'basit', photo: 'link/goes/here', bio: 'this is my personal bios')
  post = Post.new(title: 'My first post in ruby on rails', text: 'Body text of the post', author_id: user_one.id)
  comment = Comment.new(text: 'My first awesom comment', author_id: user_one.id, post_id: post.id)

  
  it 'comment author_id to be equla to author id' do
    expect(comment.post_id).to be == post.id
  end
end

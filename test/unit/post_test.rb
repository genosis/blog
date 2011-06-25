require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
  
  test "body is present" do
    post = Post.new :title => "Hello, World!"
    assert !post.valid?
  end
  
  test "title is present" do
    post = Post.new :body => "Hello, World!"
    assert !post.valid?
  end
  
  test "title is unique" do
     post = Post.new :title => "First Post", :body => "hello,World!"
     assert !post.valid?
  end
  
  test "title length" do
     post = Post.new :title => "", :body => "hello,World!"
     assert !post.valid?, "Title is too short"
     
     post.title = "z" * 21
     assert !post.valid?, "Title is too long"
  end

  
  
  
end

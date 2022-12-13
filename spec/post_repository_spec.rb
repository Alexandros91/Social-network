require 'post_repository'

RSpec.describe PostRepository do
  def reset_posts_table
    seed_sql = File.read('spec/seeds_posts.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'social_network_test' })
    connection.exec(seed_sql)
  end
  
  before(:each) do 
    reset_posts_table
  end
  
  describe '#all' do
    it 'shows a list of all posts' do
      repo = PostRepository.new

      posts = repo.all

      expect(posts.length).to eq 6

      expect(posts.first.id).to eq 1
      expect(posts.first.title).to eq 'post_1'
      expect(posts.first.content).to eq 'post_1 content'
      expect(posts.first.views).to eq 30
      expect(posts.first.account_id).to eq 2
    end
  end

  describe '#find' do
    it 'finds the first post from the posts table' do
      repo = PostRepository.new

      post = repo.find(1)
      expect(post.id).to eq 1
      expect(post.title).to eq 'post_1'
      expect(post.content).to eq 'post_1 content'
      expect(post.views).to eq 30
      expect(post.account_id).to eq 2
    end
  end

  it 'finds the third post from the posts table' do
    repo = PostRepository.new

    post = repo.find(3)
    expect(post.id).to eq 3
    expect(post.title).to eq 'post_3'
    expect(post.content).to eq 'post_3 content'
    expect(post.views).to eq 50
    expect(post.account_id).to eq 4
  end

  describe '#create' do
    it 'adds a new post object to the posts table' do
      repo = PostRepository.new

      post = Post.new
      post.title = 'post_6'
      post.content = 'post_6 content'
      post.views = 90
      post.account_id = 3

      repo.create(post)
      posts = repo.all
      last_post = posts.last

      expect(posts.length).to eq 7
      expect(last_post.title).to eq 'post_6'
      expect(last_post.content).to eq 'post_6 content'
      expect(last_post.views).to eq 90
      expect(last_post.account_id).to eq 3
    end
  end

  describe '#delete' do
    it 'deletes a post object from the posts table' do
      repo = PostRepository.new

      id_to_delete = 1
      repo.delete(id_to_delete)
      all_posts = repo.all

      expect(all_posts.length).to eq 5
      expect(all_posts.first.id).to eq 2
    end
  end
end
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
    it 'finds a post object from the posts table' do
      repo = PostRepository.new

      post = repo.find(1)
      expect(post.id).to eq 1
      expect(post.title).to eq 'post_1'
      expect(post.content).to eq 'post_1 content'
      expect(post.views).to eq 30
      expect(post.account_id).to eq 2
    end
  end

  
end
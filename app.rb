require_relative 'lib/database_connection'
require_relative 'lib/account_repository'
require_relative 'lib/post_repository'


DatabaseConnection.connect('social_network')

account_repository = AccountRepository.new
post_repository = PostRepository.new

account_repository.all.each do |account|
  p account
end

post_repository.all.each do |post|
  p post
end

account = account_repository.find(1)
puts " #{account.id} - #{account.email} - #{account.username}"

post = post_repository.find(1)
puts " #{post.id} - #{post.title} - #{post.content} - #{post.views} - #{post.account_id}"
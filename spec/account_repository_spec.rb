require 'account_repository'

RSpec.describe AccountRepository do
  def reset_accounts_table
    seed_sql = File.read('spec/seeds_accounts.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'social_network_test' })
    connection.exec(seed_sql)
  end

  before(:each) do 
    reset_accounts_table
  end

  describe '#all' do
    it 'shows a list of all the accounts' do
      repo = AccountRepository.new

      accounts = repo.all

      expect(accounts.length).to eq 2
      expect(accounts.first.id).to eq 1
      expect(accounts.first.email).to eq 'example_1@gmail.com'
      expect(accounts.first.username).to eq 'example_1'
    end
  end

  describe '#find' do
    it 'returns the account object with id 1' do
      repo = AccountRepository.new

      account = repo.find(1)

      expect(account.id).to eq 1
      expect(account.email).to eq 'example_1@gmail.com'
      expect(account.username).to eq 'example_1'
    end

    it 'returns the account object with id 2' do
      repo = AccountRepository.new

      account = repo.find(2)

      expect(account.id).to eq 2
      expect(account.email).to eq 'example_2@gmail.com'
      expect(account.username).to eq 'example_2'
    end
  end


end
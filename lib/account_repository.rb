require_relative './account'

class AccountRepository

  # Selecting all records
  # No arguments
  def all
    sql = 'SELECT id, email, username FROM accounts;'
    result_set = DatabaseConnectionn.exec_params(sql, [])

    accounts = []

    result_set.each do |record|
      account = Account.new
      account.id = record['id'].to_i
      account.email = record['email']
      account.username = record['username']
      accounts << account
    end

    return accounts
  end

  # Gets a single record by its ID
  # One argument: the id (number)
  def find(id)
    # Executes the SQL query:
    # SELECT id, name, cohort_name FROM accounts WHERE id = $1;

    # Returns a single account object.
  end

  # Add more methods below for each operation you'd like to implement.

  # def create(account)
  # end

  # def update(account)
  # end

  # def delete(account)
  # end
end
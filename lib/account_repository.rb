class AccountRepository

  # Selecting all records
  # No arguments
  def all
    # Executes the SQL query:
    # SELECT id, name, cohort_name FROM accounts;

    # Returns an array of account objects.
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
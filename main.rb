require 'sinatra'

# Example of a vulnerability (SQL Injection)
get '/users' do
  username = params[:username]
  query = "SELECT * FROM users WHERE username = '#{username}'" # SQL Injection vulnerability
  "Running query: #{query}"
end

# Example of a bug (wrong type handling)
def add_numbers(a, b)
  a.to_i + b.to_i
end

puts add_numbers("5", 10)  # This will output 15
 # Bug: String and Integer concatenation

# Example of a code smell (duplicated code)
def greet_user_1
  puts "Hello, User!"
end

def greet_user_2
  puts "Hello, User!"
end

greet_user_1
greet_user_2

# Example of a code smell (unused variable)
def unused_variable_example
  unused_var = "I am not used"
end

# Example of a bug (infinite loop)
def buggy_loop
  while true
    puts "I'm stuck in an infinite loop!" # Bug: Infinite loop
  end
end

# Commenting this out to avoid infinite loop while running
# buggy_loop

# Example of poor coding practices (hard-coded credentials)
def sensitive_info
  username = "admin"
  password = "password123" # Vulnerability: Hardcoded sensitive information
  "Username: #{username}, Password: #{password}"
end

puts sensitive_info

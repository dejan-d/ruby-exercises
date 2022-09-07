require_relative 'crud'

class Student #blueprint
    include Crud

    #STEP 1 - define attr_accessor
  
    attr_accessor :first_name, :last_name, :email, :user_name, :password 
  
  #----------------------------------------------------------------------------
    #STEP 2 - initialize
  
    def initialize(firstname, lastname, username, email, password)
  
      @first_name = firstname
      @last_name = lastname
      @user_name = username
      @email = email 
      @password = password
      
    end
  
  #-------------------------------------------------------------------------------
    #STEP 3 - Print class using to_s method
  
    def to_s
      "First name: #{@first_name}, Last name: #{@last_name}, Username: #{user_name}, email: #{email}"
    end
  end
  
  #---------------------------------------------------------------------------------
    #STEP 4 - Create student object using defined blueprint
  
  dejan = Student.new("Dejan", "Dabic", "dejan1", "dejan@example.com", "dejan123")
  
  john = Student.new("John", "Mcenroe", "john1", "johhny@example.com", "jo123")
  
  hashed_password = dejan.create_hash_digest(dejan.password)

  puts hashed_password
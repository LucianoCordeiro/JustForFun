class Social_Network
  def self.users
    @@users ||= []
  end
  
  @@posts = []
  
end

class User < Social_Network
  attr_accessor :id, :name
  def initialize(id, name) 
    @id = id 
    @name = name 
  end
  
  def self.create(name) 
    users << User.new(users.size + 1, name)
  end
  
  def self.find(id)
    users[id - 1]
  end
  
  def self.count 
    users.size
  end
  
  def posts
    user_posts = []
    i = 0 
    while i < @@posts.size
      user_posts << @@posts[i] if @id - 1 == i
      i += 1
    end
    return user_posts
  end
      
end

class Post < Social_Network
  attr_accessor :title, :body 
  attr_reader :user
  def initialize(id, title, body, user_id)
    @id = id
    @title = title 
    @body = body
    @user_id = user_id
    @user = @@users[user_id - 1]
  end
  
  def self.create(title, body, user_id) 
    @@posts << Post.new(@@posts.size + 1, title, body, user_id)
  end
  
  def self.find(id)
    @@posts[id - 1]
  end
  
  def self.count 
    @@posts.size
  end
  
end

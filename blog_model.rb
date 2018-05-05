class Social_Network
  def self.users
    @@users ||= []
  end
  
  def self.posts
    @@posts ||= []
  end
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
  
  def posts
    user_posts = []
    posts.each do |post|
      if post[:user_id] == @id
        user_posts << post 
      end 
    end 
  end
      
end

class Post < Social_Network
  attr_accessor :title, :body
  def initialize(id, title, body, user_id)
    @id = id
    @title = title 
    @body = body
    @user_id = user_id
    @user = @@users[user_id - 1]
  end
  
  def self.create(title, body, user_id) 
    posts << Post.new(posts.size + 1, title, body, user_id)
  end
  
end

x = User.create("Mario")
x = User.create("Luci")
Social_Network.users
#Post.create("ndajnd", "dnand", 1)

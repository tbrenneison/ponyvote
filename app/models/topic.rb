class Topic < ActiveRecord::Base
  has_many :votes, dependent: :destroy
  
  def upvote
    @topic.votes.create
  end
    
  def self.search(search, id)
   if search
     where(['title LIKE ?', "%#{search}%"])
   else
    scoped
   end
  end  
    
end

class Topic < ActiveRecord::Base
  has_many :votes, dependent: :destroy
  
  def upvote
    @topic.votes.create
  end
    
end

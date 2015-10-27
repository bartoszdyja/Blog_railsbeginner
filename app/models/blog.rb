class Blog < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :title, :content

  def post_creation
    created_at.strftime('%B %d, %Y')
  end
    
end

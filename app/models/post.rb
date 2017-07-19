class Post < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence:true
  validates :content, presence:true, length: {maximum: 140} # tweets capped at 140 chars.
  default_scope -> { order(created_at: :desc) } # This returns newest posts first anytime specific requests are called
end

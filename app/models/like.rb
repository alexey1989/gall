class Like < ActiveRecord::Base
  belongs_to :pick
  belongs_to :user
  after_create :increment_counter
  after_destroy :decrement_counter

private

def increment_counter
    pick.increment!(:likes)
end
def decrement_counter
    pick.decrement!(:likes)
end
end

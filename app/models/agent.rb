class Agent < ApplicationRecord 
  validates_presence_of :agent_name
  belongs_to :branch
  
  def to_s
    agent_name
  end
end

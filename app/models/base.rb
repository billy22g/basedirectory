class Base < ActiveRecord::Base
  def self.by_branch
    order("branch")
  end
end

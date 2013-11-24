class Base < ActiveRecord::Base

  validates :name, :branch, :city, :state, :lat, :long, presence: true

  validates :state, length: { is: 2 }

  validates :image_filename, allow_blank: true, format: { 
    with: /\w+\.(gif|jpg|png)\z/i,
    message: "must reference a GIF, JPG, or PNG image" 
  }

  def self.by_branch
    order("branch")
  end

end

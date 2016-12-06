class Recipe < ApplicationRecord
  belongs_to :user
  has_attached_file :avatar

  validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	def self.search(search)
		joins(:user).where("recipe_title LIKE ? OR ingredients LIKE ? OR directions LIKE ? OR username LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
		# the % at the end of the search code (the wildcard character) allows you to search for term
	end
end

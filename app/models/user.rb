class User < ApplicationRecord
  has_secure_password
  has_many :recipes

  	def self.search(search)
		where("username LIKE ?", "%#{search}%")
		# the % at the end of the search code (the wildcard character) allows you to search for term
	end
end


# <%= link_to "My Profile", users_show_path %> 			belongs in app.html.erb
# <%= link_to "Account Settings", users_edit_path %>	belongs in app.html.erb
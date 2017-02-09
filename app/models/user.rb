class User < ApplicationRecord
	validates :firstName, length: { minimum: 3 }, presence:true
	validates :lastName, length: { minimum: 3 }, presence:true
	validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/, :message => "doesn't look like an email, huh?"
end
class Comment < ApplicationRecord
	belongs_to :card
	validates_presence_of :text
end

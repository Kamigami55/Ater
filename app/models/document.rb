class Document < ActiveRecord::Base
	validates_presence_of :title
	has_many :layers
end

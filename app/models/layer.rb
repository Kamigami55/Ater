class Layer < ActiveRecord::Base
	validates_presence_of :name, :document_id
	belongs_to :document
	has_many :sections
end

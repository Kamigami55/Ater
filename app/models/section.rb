class Section < ActiveRecord::Base
	validates_presence_of :content, :order, :layer_id
	belongs_to :layer
end

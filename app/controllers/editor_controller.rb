class EditorController < ApplicationController
	def index
		@documents = Document.all()
	end
	def show
		@document = Document.find(params[:id])
	end	
	def new
		@document = Document.new
	end
	def edit
		@document = Document.find(params[:id])
	end
	def create
		@document = Document.new(document_params)
		@document.save

	    redirect_to :action => :show, :id => @document
	end
	def update
		@document = Document.find(params[:id])
		@document.update(document_params)
		# @document.layers.first.sections.first.update(params[:section])

		redirect_to :action => :show, :id => @document
	end

	private
		def document_params
			params.require(:document).permit(:title, :content)
		end
end

class DisplayannotationsController < ApplicationController
    def index
        if params[:uri]
            @canvases = Annotot::Annotation.find_by(canvas: params[:uri]).canvas
        else
            @canvases = Annotot::Annotation.all.map{|elem|elem.canvas}.uniq
        end
    end
    
    def search
        controller = Annotot::AnnotationsController.new
        controller.params = params
        search = controller.search
        @results = search.map{|result|result['@id']}
    end
end

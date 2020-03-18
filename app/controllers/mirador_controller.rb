class MiradorController < ApplicationController
    def index
        allmanifests = Manifest.all.map{|manifest| {'manifestUri' => manifest.url } }
        @manifests = allmanifests.to_json.html_safe
        @loaded = allmanifests.first['manifestUri'].to_json.html_safe
    end
end

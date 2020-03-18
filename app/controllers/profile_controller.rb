class ProfileController < ApplicationController
    def index
    end
    def update
        puts user_params.inspect
        current_user.update_attributes(user_params)
        puts current_user.inspect
    end
    def user_params
        params.permit(:display_name)
    end
end

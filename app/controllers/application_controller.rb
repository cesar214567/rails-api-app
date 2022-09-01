class ApplicationController < ActionController::API
    def json(param)
        render json:param
    end
end

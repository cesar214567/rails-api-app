class UsersController < ApplicationController
    def index
        json User.all
    end

    def create
        json User.create(post_params)
    end

    def show
        json User.find(params[:id])
    end

    def update
        user = User.find(params[:id])
        if user.update(post_params)
            json user
        else
            e = Errors::NotFound.new
            json ErrorSerializer.new(e), status: e.status
        end
    end
    
    def destroy
        user = User.find(params[:id])
        if user.destroy
            json ""
        else
            e = Errors::NotFound.new
            json ErrorSerializer.new(e), status: e.status
        end
    end

    def post_params
        params.require(:user).permit(:username,:password)
    end
end

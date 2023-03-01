class ListController < ApplicationController
    def index
        @lists = List.all.order(id: :desc)
    end

    def remove_list
        @list = List.find(params[:id])
        if @list.destroy
            render json: {"data": "data removed successfully"}
        else
            render json: {"error": "some error occured"}
        end
    end

    def update_list
        @list = List.find(params[:id])
        if @list.update(completed: params[:value])
            render json: {"data": "data removed successfully"}
        else
            render json: {"error": "some error occured"}
        end
    end
end

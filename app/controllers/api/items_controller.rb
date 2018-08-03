class Api::ItemsController < ApiController
    before_action :authenticated?

    def create
        list = List.find(params[:list_id])
        item = list.items.create(item_params)
        if item.save
            render json: item
        else
            render json: { errors: item.errors.full_message }, status: :unprocessable_entity
        end
    end
    
    def update
        item = Item.find(params[:id])
        if item.update(item_params)
            render json: item
        else
            render json: { errors: items.errors.full_messages }, status: :unprocessable_entity
        end
    end

    private
    def item_params
        params.require(:item).permit(:entry, :completed)
    end
end

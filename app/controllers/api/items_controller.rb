class Api::ItemsController < ApiController
    before_action :authenticated?

    def index
        items = List.all
        render json: items, each_searilizer: ItemSerializer
    end

    def create
        item = Item.new(item_params)
        if item.save
            render json: item
        else
            render json: { errors: user.errors.full_message }, status: :unprocessable_entity
        end
    end
    
    private
    def user_params
        params.require(:item).permit(:entry)
    end
end

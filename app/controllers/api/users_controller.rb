class Api::UsersController < ApiController
    before_action :authenticated?

    def index
        users = User.all
        render json: users, each_searilizer: UserSerializer
    end

    def show
        users = User.find(params[:id])
        render json: users, each_searilizer: UserSerializer
    end

    def create
        user = User.new(user_params)
        if user.save
            render json: user
        else
            render json: { errors: user.errors.full_message }, status: :unprocessable_entity
        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :password)
    end
end

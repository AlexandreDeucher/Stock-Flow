module Managers
  class UsersController < ApplicationController
    before_action :set_user, only: %i[show update destroy]

    def index
      render json: UserSerializer.new(User.all).serialize
    end

    def show
      render json: UserSerializer.new(@user).serialize
    end

    def create
      user = User.new(create_params)

      if user.save
        render json: UserSerializer.new(user).serialize, status: :created
      else
        render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
      end
    end

    def update
      if @user.update(update_params)
        render json: UserSerializer.new(@user).serialize
      else
        render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
      end
    end

    def destroy
      @user.destroy
      head :no_content
    end

    private

    def set_user
      @user = User.find(params[:id])
    end

    def create_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :role)
    end

    def update_params
      params.require(:user).permit(:name, :email, :role)
    end
  end
end

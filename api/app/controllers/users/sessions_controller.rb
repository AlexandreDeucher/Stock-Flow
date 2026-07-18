module Users
  class SessionsController < Devise::SessionsController
    skip_before_action :authenticate_user!, only: :create
    prepend_before_action -> { authenticate_user!(force: true) }, only: :destroy

    respond_to :json

    private

    def respond_with(user, _opts = {})
      render json: UserSerializer.new(user).serialize
    end
  end
end

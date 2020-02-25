class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]
    
    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            @token = encode_token(user_id: @user.id)
            render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    def update
        if @user.id == params[:id].to_i
            @user.update_attribute("username", params[:_json])
            render json: { newUsername: @user.username }.to_json
        else
            render json: { message: "Unable to update this user" }.to_json
        end
    end

    def destroy
        @user = User.find(params[:id])
    end
   
    private
   
    def user_params
        params.require(:user).permit(:username, :password, :bio, :avatar)
    end

end

